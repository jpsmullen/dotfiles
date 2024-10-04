#!/usr/bin/env python3

"""
Simple script for converting heights in cm to feet and inches.
"""

import argparse
import sys


def cm_to_ft_in(cm_height: float, approximate: bool) -> tuple[int, int | float]:
    """Convert centimetres to feet and inches."""

    # 1 inch == 2.54cm
    total_inches = cm_height / 2.54

    # 1 foot == 12 inches
    feet = int(total_inches / 12)

    # Inches are rounded up by default
    inches = total_inches % 12 if approximate else round(total_inches % 12)

    # Round things like 5'12" to 6'0" (won't run if approximate is True)
    if inches == 12:
        feet += 1
        inches = 0

    return feet, inches


def main() -> None:
    """Main functionality of the script."""

    # Set up argparse
    parser = argparse.ArgumentParser(
        description="Convert heights from cm to feet and inches.",
        add_help=True,
    )

    parser.add_argument(
        "heights",
        help="heights in cm (e.g. 182, 160, 180.5, 172.75)",
        nargs="+",
        type=float,
        metavar="CM_HEIGHTS",
    )

    parser.add_argument(
        "-a",
        "--approximate",
        help="get the approximate measurement (i.e. not rounded)",
        action="store_true",
    )

    # Show the help message and exit if no arguments are given
    args = parser.parse_args(sys.argv[1:] or ["-h"])

    for cm_height in args.heights:
        feet, inches = cm_to_ft_in(cm_height, args.approximate)

        if args.approximate:
            print(f"{cm_height}cm is approximately {feet}'{inches}\"")
        else:
            print(f"{cm_height}cm is roughly {feet}'{inches}\"")


if __name__ == "__main__":
    main()
