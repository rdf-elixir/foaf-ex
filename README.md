# FOAF.ex

An implementation of the [Friend of a Friend (FOAF)](http://xmlns.com/foaf/spec/) vocabulary for Elixir as Grax schemas.

The API documentation can be found [here](https://hexdocs.pm/foaf/).
For more information about the RDF on Elixir projects, go to <https://rdf-elixir.dev>.


## Features

- The `FOAF` module acts as the `RDF.Vocabulary.Namespace` for the FOAF vocabulary
- Grax structures for all FOAF classes and their properties, for easy
  creation and manipulation of FOAF profiles, groups, and documents
- Seamless integration with all RDF on Elixir projects


## Installation

Add `foaf` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:foaf, "~> 0.1"}
  ]
end
```


## Usage

```elixir
FOAF.Person.build!(EX.john_doe(),
  name: "John Doe",
  mbox: ~I<mailto:john@example.com>,
  homepages: ~I<http://example.com/john>,
  knows: [EX.jane_doe()],
  interests: [~I<http://www.w3.org/TR/rdf-sparql-query/>]
) 
|> Grax.to_rdf!(prefixes: [foaf: FOAF, ex: EX]) 
|> RDF.Turtle.write_string!()
```

produces:

```turtle
@prefix ex: <http://example.com/> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .

ex:john_doe
    a foaf:Person ;
    foaf:homepage ex:john ;
    foaf:interest <http://www.w3.org/TR/rdf-sparql-query/> ;
    foaf:knows ex:jane_doe ;
    foaf:mbox <mailto:john@example.com> ;
    foaf:name "John Doe" .
```


## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for details.


## Consulting

If you need help with your Elixir and Linked Data projects, just contact [NinjaConcept](https://www.ninjaconcept.com/) via <contact@ninjaconcept.com>.


## License and Copyright

(c) 2024 Marcel Otto. MIT Licensed, see [LICENSE](LICENSE.md) for details.

