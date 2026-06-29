from pathlib import Path
import json
import re


def make_item_lang_lines(source_dir: Path, dest_file: Path):
    source_dir = Path(source_dir)
    dest_file = Path(dest_file)

    if not source_dir.exists():
        raise FileNotFoundError(f"source_dir does not exist: {source_dir}")

    if not source_dir.is_dir():
        raise NotADirectoryError(f"source_dir is not a directory: {source_dir}")

    header = "data modify storage reg:item new set value {\\"

    lore_count_pattern = re.compile(r'\blore_line_count\s*:\s*(\d+)\s*,?')
    id_pattern = re.compile(r'\bid\s*:\s*"([^"]+)"\s*,?')

    extracted_items: list[tuple[str, int]] = []

    for file_path in source_dir.rglob("*.mcfunction"):
        text = file_path.read_text(encoding="utf-8-sig")
        lines = text.splitlines()

        if not lines:
            continue

        if lines[0].strip() != header:
            continue

        lore_line_count = None
        item_id = None

        for line in lines:
            if lore_line_count is None:
                match = lore_count_pattern.search(line)
                if match:
                    lore_line_count = int(match.group(1))

            if item_id is None:
                match = id_pattern.search(line)
                if match:
                    item_id = match.group(1)

            if lore_line_count is not None and item_id is not None:
                break

        if lore_line_count is None or item_id is None:
            continue

        extracted_items.append((item_id, lore_line_count))

    if dest_file.exists():
        data = json.loads(dest_file.read_text(encoding="utf-8-sig"))
    else:
        data = {}

    if not isinstance(data, dict):
        raise ValueError(f"dest_file root must be a JSON object/dict: {dest_file}")

    added_count = 0

    for item_id, lore_line_count in extracted_items:
        keys = [f"item.{item_id}"]

        for i in range(1, lore_line_count + 1):
            keys.append(f"item.{item_id}.{i}")

        for key in keys:
            if key not in data:
                data[key] = "none"
                added_count += 1

    dest_file.parent.mkdir(parents=True, exist_ok=True)

    dest_file.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8"
    )

    return {
        "scanned_items": len(extracted_items),
        "added_keys": added_count,
        "dest_file": str(dest_file),
    }

def main():
    make_item_lang_lines(
        Path("./data/reg/function/item/"),
        Path("../../../../resourcepacks/CTMRouge Resources/assets/crouge/lang/zh_cn.json")
    )

if __name__ == "__main__":
    main()