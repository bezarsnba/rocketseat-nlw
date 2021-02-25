defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    ## = Operador de match
    "#{filename}.csv"
    |> File.read()
    |> handle_file()

  end
  ## funcao privada
  defp handle_file({:ok, result}) do
    result =
      result
      |> String.split( ",")
      |> Stream.map( fn number -> String.to_integer(number) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end


  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid"}}

end
