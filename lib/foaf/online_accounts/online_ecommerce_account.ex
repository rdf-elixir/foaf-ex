defmodule FOAF.OnlineEcommerceAccount do
  @moduledoc """
  A Grax schema struct for `foaf:OnlineEcommerceAccount`s.

  See <http://xmlns.com/foaf/0.1/#term_OnlineEcommerceAccount>.
  """

  use Grax.Schema

  schema FOAF.OnlineEcommerceAccount < FOAF.OnlineAccount do
  end
end
