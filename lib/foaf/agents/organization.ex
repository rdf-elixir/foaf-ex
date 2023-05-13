defmodule FOAF.Organization do
  @moduledoc """
  A Grax schema struct for `foaf:Organization`s.

  See <http://xmlns.com/foaf/0.1/#term_Organization>.
  """

  use Grax.Schema

  schema FOAF.Organization < FOAF.Agent do
  end
end
