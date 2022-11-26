import argparse


def countbits():
    # Parse the CLI arguments
    parser = argparse.ArgumentParser(
        description="Return the number of '1's in a given number"
    )
    parser.add_argument(
        "number", metavar="N", type=int, help="Number to count the '1's in"
    )
    args = parser.parse_args()

    # bin() returns the binary string of an integer
    # .count() returns the number of non-overlapping occurrences of "1"
    print(
        f"Number of '1's in the binary representation of {args.number} is: {bin(args.number).count('1')}"
    )


if __name__ == "__main__":
    countbits()
