defmodule FOAF.Document do
  @moduledoc """
  A Grax schema struct for `foaf:Document`s.

  See <http://xmlns.com/foaf/0.1/#term_Document>.
  """

  use Grax.Schema

  schema FOAF.Document < FOAF.Thing do
    property sha1: FOAF.sha1(), type: :string

    property primary_topic: FOAF.primaryTopic(), type: :iri
    property topics: FOAF.topic(), type: list_of(:iri)
  end
end
