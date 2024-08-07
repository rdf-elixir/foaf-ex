defmodule FOAF do
  @moduledoc """
  Implementation of the FOAF vocabulary.

  The following features are provided:

  - The `FOAF` module acts as the `RDF.Vocabulary.Namespace` for the FOAF vocabulary.
  - Grax structures for all FOAF classes and their properties.

  See <http://xmlns.com/foaf/0.1/>.
  """

  import RDF.Namespace

  act_as_namespace FOAF.NS.FOAF
end
