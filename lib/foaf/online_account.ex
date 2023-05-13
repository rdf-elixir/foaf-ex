defmodule FOAF.OnlineAccount do
  @moduledoc """
  A Grax schema struct for `foaf:OnlineAccount`s.

  See <http://xmlns.com/foaf/0.1/#term_OnlineAccount>.
  """

  use Grax.Schema

  schema FOAF.OnlineAccount < FOAF.Thing do
    property account_name: FOAF.accountName(), type: :string

    link account_service_homepages: FOAF.accountServiceHomepage(), type: list_of(FOAF.Document)
  end
end
