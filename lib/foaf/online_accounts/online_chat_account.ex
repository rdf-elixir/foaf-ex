defmodule FOAF.OnlineChatAccount do
  @moduledoc """
  A Grax schema struct for `foaf:OnlineChatAccount`s.

  See <http://xmlns.com/foaf/0.1/#term_OnlineGamingAccount>.
  """

  use Grax.Schema

  schema FOAF.OnlineChatAccount < FOAF.OnlineAccount do
  end
end
