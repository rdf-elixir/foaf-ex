defmodule FOAF.PersonalProfileDocument do
  @moduledoc """
  A Grax schema struct for `foaf:PersonalProfileDocument`s.

  See <http://xmlns.com/foaf/0.1/#term_PersonalProfileDocument>.
  """

  use Grax.Schema

  schema FOAF.PersonalProfileDocument < FOAF.Document do
  end
end
