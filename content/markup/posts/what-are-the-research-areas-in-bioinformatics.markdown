--- 
  title: What is the best way to survey bioinformatics research areas?
  created_at: "2011-11-28"
---

One question I aimed to answer in the 2008 survey is "What topics are
bioinformaticians researching?" The possible answers to this question was one
of nine categories from [the scope of the Oxford Journal of
Bioinformatics:][scope]

  * Genome analysis
  * Sequence analysis
  * Phylogenetics
  * Structural Bioinformatics
  * Gene Expression
  * Genetics and Population Analysis
  * Systems Biology
  * Data and Text Mining
  * Databases and Ontologies

I think that a larger range of categories may provide a more granular outlook
of research areas. One possible alternative for an answer list is [the complete
scope of research areas from the same journal][expanded]. This has the
advantage that the top level domains match the areas from the previous year
which allows for direct comparison. The disadvantage is that a much longer list
which may make answering a chore.

Finding a comprehensive list of research areas in bioinformatics is
unexpectedly hard given that that ontologies are an active area of development.
The closest, recommended by [Pierre Lindenbaum][pierre], is the [EDAM ontology
discussed on biostar][edam]. [Rob Syme][rob] using his [ruby ontology
library][onto] parsed EDAM to pull out the [second level terms for
bioinformatics areas][terms]. This list however would need to be updated with
missing terms. A couple of examples I can immediately think of would be genome
assembly and expression analysis.

I think the input of bioinformatics community will be a multiplier to the
success of the survey. The direct input of Pierre and Rob, as well as
discussions on [biostar][] and [on the survey github issues][issues], has
already been excellent. So any suggestions or ideas you have on the survey and
how we can describe the field we work in are very welcome.

[scope]: http://www.oxfordjournals.org/our_journals/bioinformatics/for_authors/scope_guidelines.html
[expanded]: https://github.com/michaelbarton/bioinformatics-career-survey/blob/develop/2011/questions.yml#L114
[edam]: http://biostar.stackexchange.com/questions/8927/an-ontology-for-bioinformatics-itself
[pierre]: http://plindenbaum.blogspot.com/
[rob]: http://robsyme.com/
[onto]: https://github.com/robsyme/obo
[terms]: https://gist.github.com/1341255
[issues]: https://github.com/michaelbarton/bioinformatics-career-survey/issues
[biostar]: http://biostar.stackexchange.com/questions/12663/bioinformatics-career-survey-2011-2012/12675
