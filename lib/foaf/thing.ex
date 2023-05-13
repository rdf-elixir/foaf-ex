defmodule FOAF.Thing do
  @moduledoc """
  A Grax schema struct for all general FOAF properties.

  All of these properties are inherited to all the other schemas.
  """

  use Grax.Schema

  schema do
    property name: FOAF.name(), type: :string

    property phones: FOAF.phone(), type: list_of(:iri)

    link makers: FOAF.maker(), type: list_of(FOAF.Agent)

    link homepages: FOAF.homepage(), type: list_of(FOAF.Document)
    link depictions: FOAF.depiction(), type: list_of(FOAF.Image)
    property logos: FOAF.logo(), type: list_of(:iri)

    link is_primary_topic_of: FOAF.isPrimaryTopicOf(), type: list_of(FOAF.Document)
    link pages: FOAF.page(), type: list_of(FOAF.Document)
  end
end
