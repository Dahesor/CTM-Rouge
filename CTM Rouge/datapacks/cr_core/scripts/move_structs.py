from pathlib import Path
import shutil

SOURCE_DIR = Path("../../generated")
DESTINATION_DIR = Path("./structs/data")


def move_structs(source: Path, destination: Path):
    source = Path(source)
    destination = Path(destination)

    if not source.exists():
        raise FileNotFoundError(f"Source does not exist: {source}")

    if not source.is_dir():
        raise NotADirectoryError(f"Source is not a directory: {source}")

    destination.mkdir(parents=True, exist_ok=True)

    for file in source.rglob("*"):
        if not file.is_file():
            continue

        relative_path = file.relative_to(source)
        dest_file = destination / relative_path

        dest_file.parent.mkdir(parents=True, exist_ok=True)

        if dest_file.exists():
            if dest_file.is_file():
                dest_file.unlink()
            else:
                raise IsADirectoryError(
                    f"Cannot overwrite directory with file: {dest_file}"
                )

        shutil.move(str(file), str(dest_file))

    for folder in sorted(source.rglob("*"), reverse=True):
        if folder.is_dir():
            try:
                folder.rmdir()
            except OSError:
                pass

    try:
        source.rmdir()
    except OSError:
        pass


def main():
    move_structs(SOURCE_DIR, DESTINATION_DIR)

if __name__ == "__main__":
    main()