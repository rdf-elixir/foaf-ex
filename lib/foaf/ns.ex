defmodule FOAF.NS do
  @moduledoc """
  `RDF.Vocabulary.Namespace`s for the used vocabularies.
  """

  use RDF.Vocabulary.Namespace

  @vocabdoc """
  The Friend of a Friend (FOAF) vocabulary.

  See <http://xmlns.com/foaf/spec/>
  """
  defvocab FOAF,
    base_iri: "http://xmlns.com/foaf/0.1/",
    file: "foaf.ttl",
    case_violations: :fail
end
