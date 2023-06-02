defmodule KajoolyTemplateTailwindWeb.GenericLive.Text do

  @doc """

    Text Helpers

    Live Controler code:

      import KajoolyTemplateTailwindWeb.GenericLive.Text


    iex> text_to_two_char(string)

    iex> text_to_two_char("pm")
    PM

    iex> text_to_two_char("Jorge")
    JO

    iex> text_to_two_char("Jorge Palmar")
    JP

    """
  def text_to_two_char(string) do
    text= string || "--"
     if String.length(text) == 2 do
      String.upcase(text)
    else
      tt=String.split(text, " ", trim: true)
      if length(tt) == 1 do
        String.upcase("#{String.slice(text, 0,2)}")
      else
        String.upcase("#{String.slice(List.first(tt), 0,1)}#{String.slice(List.last(tt), 0,1)}")
      end
    end
  end
  @doc """

    iex> gen_id_key()


    """
  def gen_id_key() do
    min = String.to_integer("100000000000", 36)
    max = String.to_integer("ZZZZZZZZZZZZ", 36)
    max
    |> Kernel.-(min)
    |> :rand.uniform()
    |> Kernel.+(min)
    |> Integer.to_string(36)
  end
  @doc """

    iex> gen_number()


    """
  def gen_number() do
    min = 10
    max = 99
    max
    |> Kernel.-(min)
    |> :rand.uniform()
    |> Kernel.+(min)
  end

end
