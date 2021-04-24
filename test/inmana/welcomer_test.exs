defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcomer/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "You're very special"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is special, returns a message" do
      params = %{"name" => "gabriel", "age" => "21"}
      expected_result = {:ok, "Welcome gabriel"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is under age, returns an error" do
      params = %{"name" => "gabriel", "age" => "17"}
      expected_result = {:error, "You shall not pass gabriel"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
