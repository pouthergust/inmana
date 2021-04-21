defmodule Inmana.Welcomer do

  # Receber nome e idade do User
  # Se o User chamar "banane" e tiver idade "42", ele recebe uma mensagem especial
  # Se o User for maior de idade, ele recebe uam mensagem normal
  # Se o User for menor de idade, retornamos um erro
  # Temos que tratar o nome do User para entradas erradas

  def welcome(%{"name" => name, "age" => age}) do
      #age = params["age"] |> String.to_integer()
      age = String.to_integer(age)

      # name =
       # params["name"]
        name
        |> String.trim()
        |> String.downcase()
        |> evaluate(age)
  end

  defp evaluate("banana", 42), do: {:ok, "You're very special"}
  defp evaluate(name, age) when age >= 18, do: {:ok, "Welcome #{name}"}
  defp evaluate(name, _age), do: {:error, "You shall not pass #{name}"}

end
