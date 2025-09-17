#!/usr/bin/env python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

#!/usr/bin/env python3
import os
import sys
import subprocess
from pathlib import Path

def main():
    # List of files to sort
    proprietary_files = [
        "proprietary-files.txt"
    ]

    # Figure out this script's directory
    my_dir = Path(__file__).parent.resolve()
    android_root = (my_dir / '../../..').resolve()

    helper = android_root / 'tools/extract-utils/sort-blobs-list.py'

    if not helper.is_file():
        print(f"Unable to find helper script at {helper}", file=sys.stderr)
        sys.exit(1)

    # Call the helper Python script as a subprocess
    cmd = [str(helper), "--dir-first"] + proprietary_files
    try:
        subprocess.check_call([sys.executable] + cmd)
    except subprocess.CalledProcessError as e:
        print(f"Sorting failed: {e}", file=sys.stderr)
        sys.exit(e.returncode)

if __name__ == "__main__":
    main()
