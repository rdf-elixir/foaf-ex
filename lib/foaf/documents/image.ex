defmodule FOAF.Image do
  @moduledoc """
  A Grax schema struct for `foaf:Image`s.

  See <http://xmlns.com/foaf/0.1/#term_Image>.
  """

  use Grax.Schema

  schema FOAF.Image < FOAF.Document do
    property depicts: FOAF.depicts(), type: list_of(:iri)

    link thumbnail: FOAF.thumbnail(), type: FOAF.Image
  end
end
