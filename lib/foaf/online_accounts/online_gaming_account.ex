defmodule FOAF.OnlineGamingAccount do
  @moduledoc """
  A Grax schema struct for `foaf:OnlineGamingAccount`s.

  See <http://xmlns.com/foaf/0.1/#term_OnlineChatAccount>.
  """

  use Grax.Schema

  schema FOAF.OnlineGamingAccount < FOAF.OnlineAccount do
  end
end
