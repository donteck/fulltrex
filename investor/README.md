# FULLTREX investor design package

The complete archive is stored in 9 parts because GitHub's blob upload API rejected the single large file. Restoring it recreates the exact downloadable investor ZIP.

1. Download this repository using **Code → Download ZIP** and extract it.
2. Open a terminal in this `investor` folder.
3. Run `python restore_package.py` (macOS/Linux: `python3 restore_package.py`). On Windows, you can instead run `powershell -ExecutionPolicy Bypass -File restore_package.ps1`.
4. Extract the resulting `FULLTREX_Investor_Design_Package.zip` and open `00_START_HERE.txt`.

The restore scripts verify the archive's SHA-256 checksum. Contents: 39 design images, the investor philosophy PDF, pitch guide, inventory, roadmap, and original design export. Two incomplete images are separated in the archive folder.
