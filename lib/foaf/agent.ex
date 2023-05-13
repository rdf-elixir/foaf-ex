defmodule FOAF.Agent do
  @moduledoc """
  A Grax schema struct for `foaf:Agent`s.

  See <http://xmlns.com/foaf/0.1/#term_Agent>.
  """

  use Grax.Schema

  schema FOAF.Agent < FOAF.Thing do
    property nick: FOAF.nick(), type: :string

    # Although no rdfs:domain is defined, we're adding it here and not
    # on Thing, since it can become quite ambiguous on other classes.
    property title: FOAF.title(), type: :string

    property birthday: FOAF.birthday(), type: :string
    property age: FOAF.age(), type: :integer
    property gender: FOAF.gender(), type: :string

    property status: FOAF.status(), type: :string

    property mbox: FOAF.mbox(), type: :iri
    property mbox_sha1sum: FOAF.mbox_sha1sum(), type: :string

    link weblogs: FOAF.weblog(), type: list_of(FOAF.Document)
    link tipjars: FOAF.tipjar(), type: list_of(FOAF.Document)

    link openid: FOAF.openid(), type: FOAF.Document
    link accounts: FOAF.account(), type: list_of(FOAF.OnlineAccount)
    property jabber_id: FOAF.jabberID(), type: :string
    property skype_id: FOAF.skypeID(), type: :string
    property icq_chat_id: FOAF.icqChatID(), type: :string
    property yahoo_chat_id: FOAF.yahooChatID(), type: :string
    property msn_chat_id: FOAF.msnChatID(), type: :string
    property aim_chat_id: FOAF.aimChatID(), type: :string

    link interests: FOAF.interest(), type: list_of(FOAF.Document)
    property topic_interests: FOAF.topic_interest(), type: list_of(:iri)

    property made: FOAF.made(), type: list_of(:iri)
  end
end
