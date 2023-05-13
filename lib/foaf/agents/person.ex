defmodule FOAF.Person do
  @moduledoc """
  A Grax schema struct for `foaf:Person`s.

  See <http://xmlns.com/foaf/0.1/#term_Person>.
  """

  use Grax.Schema

  schema FOAF.Person < FOAF.Agent do
    property given_name: FOAF.givenName(), type: :string
    property family_name: FOAF.familyName(), type: :string
    property first_name: FOAF.firstName(), type: :string
    property last_name: FOAF.lastName(), type: :string

    link images: FOAF.img(), type: list_of(FOAF.Image)

    link workplace_homepages: FOAF.workplaceHomepage(), type: list_of(FOAF.Document)
    link work_info_homepages: FOAF.workInfoHomepage(), type: list_of(FOAF.Document)
    link school_homepages: FOAF.schoolHomepage(), type: list_of(FOAF.Document)

    link publications: FOAF.publications(), type: list_of(FOAF.Document)

    # The FOAF spec is not clear what's the range of the project properties.
    link current_projects: FOAF.currentProject(), type: list_of(:iri)
    link past_projects: FOAF.pastProject(), type: list_of(:iri)

    link knows: FOAF.knows(), type: list_of(FOAF.Person)

    property myers_briggs: FOAF.myersBriggs(), type: :string
    property plan: FOAF.plan(), type: :string
  end
end
