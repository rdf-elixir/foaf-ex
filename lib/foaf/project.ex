defmodule FOAF.Project do
  @moduledoc """
  A Grax schema struct for `foaf:Project`s.

  See <http://xmlns.com/foaf/0.1/#term_Project>.
  """

  use Grax.Schema

  schema FOAF.Project < FOAF.Thing do
  end
end
