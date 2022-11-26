defmodule Counter do
    def bits() do
        # Get command line arguments (in a list), save the first item in the list, and convert the string to an integer
        n = System.argv()
            |> List.first()
            |> String.to_integer()

		# Returns a binary representation of "n" in the given base (2).
        result = Integer.to_string(n, 2)
		    |> String.graphemes()  # Returns Unicode graphemes in the string
		    |> Enum.count(fn x -> x == "1" end)  # count fn x where x == "1"

        IO.puts("Number of '1's in the binary representation of #{n} is: #{result}")
	end
end


# What module and function to run when this module is run with:
#   $ elixir bit_counter.exs
Counter.bits