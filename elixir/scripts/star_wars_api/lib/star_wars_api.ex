defmodule StarWarsAPI do
  @moduledoc """
  Documentation for `StarWarsAPI`.
  """

  @doc """
  Get info about the supplied StarWars starship ID

  ## Examples

      iex> StarWarsAPI.get_starship_info(9)
      <starship info here>

  """
  def get_starship_info(starship_id \\ 9) do
    url = "https://swapi.dev/api/starships/#{starship_id}"

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts(body)
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
