defmodule FOAFTest do
  use FOAF.Test.Case

  doctest FOAF

  {properties, classes} = Enum.split_with(FOAF.NS.FOAF.__terms__(), &RDF.Utils.downcase?/1)
  @classes classes
  @properties properties

  describe "RDF.Vocabulary.Namespace compatibility" do
    Enum.each(@classes, fn class ->
      test "FOAF.#{class} can be resolved to a RDF.IRI" do
        assert FOAF
               |> Module.concat(unquote(class))
               |> RDF.iri() ==
                 FOAF.NS.FOAF
                 |> Module.concat(unquote(class))
                 |> RDF.iri()
      end
    end)

    Enum.each(@properties, fn property ->
      test "FOAF.#{property}/0" do
        assert apply(FOAF, unquote(property), []) ==
                 apply(FOAF.NS.FOAF, unquote(property), [])
      end

      test "FOAF.#{property}/2" do
        assert apply(FOAF, unquote(property), [EX.S, EX.O]) ==
                 apply(FOAF.NS.FOAF, unquote(property), [EX.S, EX.O])
      end

      test "FOAF.#{property}/1" do
        o = RDF.iri(EX.O)
        desc = apply(FOAF.NS.FOAF, unquote(property), [EX.S, o])
        assert apply(FOAF, unquote(property), [desc]) == [o]
      end
    end)

    test "__file__/0" do
      assert FOAF.__file__() == FOAF.NS.FOAF.__file__()
    end
  end
end
