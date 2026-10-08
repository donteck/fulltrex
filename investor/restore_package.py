from pathlib import Path
import hashlib
folder = Path(__file__).resolve().parent
output = folder / "FULLTREX_Investor_Design_Package.zip"
parts = sorted(folder.glob(output.name + ".part*"))
if len(parts) != 9:
    raise SystemExit("Expected 9 archive parts. Download the whole repository first.")
with output.open("wb") as dst:
    for part in parts:
        dst.write(part.read_bytes())
expected = "4b899778d1dc37845995ba8695f51f276b9f4a4bcc980c4bc59ef0cc3aea331b"
if hashlib.sha256(output.read_bytes()).hexdigest() != expected:
    output.unlink()
    raise SystemExit("Archive checksum failed. Download the parts again.")
print("Verified archive ready:", output)
