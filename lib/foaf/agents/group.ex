defmodule FOAF.Group do
  @moduledoc """
  A Grax schema struct for `foaf:Group`s.

  See <http://xmlns.com/foaf/0.1/#term_Group>.
  """

  use Grax.Schema

  schema FOAF.Group < FOAF.Agent do
    link members: FOAF.member(), type: list_of(FOAF.Agent)
  end
end
