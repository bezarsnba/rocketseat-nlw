defmodule Rocketpay.NumbersTest do
  use ExUnit.Case, async: true

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file return sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end
    test "when there is  no a file return sum of number retorn error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid"}}

      assert response == expected_response
    end
  end

end
