describe 'conjugate', ->
  Given -> @subject = require '../lib/conjugate'

  context 'regular conjugation', ->
    context 'I', ->
      Then -> @subject('I', 'run').should.eql 'run'

    context 'you', ->
      Then -> @subject('you', 'run').should.eql 'run'

    context 'he', ->
      Then -> @subject('he', 'run').should.eql 'runs'

    context 'she', ->
      Then -> @subject('she', 'run').should.eql 'runs'

    context 'it', ->
      Then -> @subject('it', 'run').should.eql 'runs'

    context 'we', ->
      Then -> @subject('we', 'run').should.eql 'run'

    context 'they', ->
      Then -> @subject('they', 'run').should.eql 'run'

  context 'irregular conjugation', ->
    context 'words ending in "o"', ->
      context 'I', ->
        Then -> @subject('I', 'go').should.eql 'go'

      context 'you', ->
        Then -> @subject('you', 'go').should.eql 'go'

      context 'he', ->
        Then -> @subject('he', 'go').should.eql 'goes'

      context 'she', ->
        Then -> @subject('she', 'go').should.eql 'goes'

      context 'it', ->
        Then -> @subject('it', 'go').should.eql 'goes'

      context 'we', ->
        Then -> @subject('we', 'go').should.eql 'go'

      context 'they', ->
        Then -> @subject('they', 'go').should.eql 'go'

    context 'words ending in "s"', ->
      context 'I', ->
        Then -> @subject('I', 'address').should.eql 'address'

      context 'you', ->
        Then -> @subject('you', 'address').should.eql 'address'

      context 'he', ->
        Then -> @subject('he', 'address').should.eql 'addresses'

      context 'she', ->
        Then -> @subject('she', 'address').should.eql 'addresses'

      context 'it', ->
        Then -> @subject('it', 'address').should.eql 'addresses'

      context 'we', ->
        Then -> @subject('we', 'address').should.eql 'address'

      context 'they', ->
        Then -> @subject('they', 'address').should.eql 'address'
      
    context 'words ending in "sh"', ->
      context 'I', ->
        Then -> @subject('I', 'rush').should.eql 'rush'

      context 'you', ->
        Then -> @subject('you', 'rush').should.eql 'rush'

      context 'he', ->
        Then -> @subject('he', 'rush').should.eql 'rushes'

      context 'she', ->
        Then -> @subject('she', 'rush').should.eql 'rushes'

      context 'it', ->
        Then -> @subject('it', 'rush').should.eql 'rushes'

      context 'we', ->
        Then -> @subject('we', 'rush').should.eql 'rush'

      context 'they', ->
        Then -> @subject('they', 'rush').should.eql 'rush'
      
    context 'words ending in "z"', ->
      context 'I', ->
        Then -> @subject('I', 'buzz').should.eql 'buzz'

      context 'you', ->
        Then -> @subject('you', 'buzz').should.eql 'buzz'

      context 'he', ->
        Then -> @subject('he', 'buzz').should.eql 'buzzes'

      context 'she', ->
        Then -> @subject('she', 'buzz').should.eql 'buzzes'

      context 'it', ->
        Then -> @subject('it', 'buzz').should.eql 'buzzes'

      context 'we', ->
        Then -> @subject('we', 'buzz').should.eql 'buzz'

      context 'they', ->
        Then -> @subject('they', 'buzz').should.eql 'buzz'
      
    context 'words ending in "x"', ->
      context 'I', ->
        Then -> @subject('I', 'tax').should.eql 'tax'

      context 'you', ->
        Then -> @subject('you', 'tax').should.eql 'tax'

      context 'he', ->
        Then -> @subject('he', 'tax').should.eql 'taxes'

      context 'she', ->
        Then -> @subject('she', 'tax').should.eql 'taxes'

      context 'it', ->
        Then -> @subject('it', 'tax').should.eql 'taxes'

      context 'we', ->
        Then -> @subject('we', 'tax').should.eql 'tax'

      context 'they', ->
        Then -> @subject('they', 'tax').should.eql 'tax'
      
    context 'words ending in "j" (purportedly, though I can\'t find any real examples of such verbs)', ->
      context 'I', ->
        Then -> @subject('I', 'haj').should.eql 'haj'

      context 'you', ->
        Then -> @subject('you', 'haj').should.eql 'haj'

      context 'he', ->
        Then -> @subject('he', 'haj').should.eql 'hajes'

      context 'she', ->
        Then -> @subject('she', 'haj').should.eql 'hajes'

      context 'it', ->
        Then -> @subject('it', 'haj').should.eql 'hajes'

      context 'we', ->
        Then -> @subject('we', 'haj').should.eql 'haj'

      context 'they', ->
        Then -> @subject('they', 'haj').should.eql 'haj'
      
    context 'words ending in "y"', ->
      context 'I', ->
        Then -> @subject('I', 'spy').should.eql 'spy'

      context 'you', ->
        Then -> @subject('you', 'spy').should.eql 'spy'

      context 'he', ->
        Then -> @subject('he', 'spy').should.eql 'spies'

      context 'she', ->
        Then -> @subject('she', 'spy').should.eql 'spies'

      context 'it', ->
        Then -> @subject('it', 'spy').should.eql 'spies'

      context 'we', ->
        Then -> @subject('we', 'spy').should.eql 'spy'

      context 'they', ->
        Then -> @subject('they', 'spy').should.eql 'spy'

    context 'have', ->
      context 'I', ->
        Then -> @subject('I', 'have').should.eql 'have'

      context 'you', ->
        Then -> @subject('you', 'have').should.eql 'have'

      context 'he', ->
        Then -> @subject('he', 'have').should.eql 'has'

      context 'she', ->
        Then -> @subject('she', 'have').should.eql 'has'

      context 'it', ->
        Then -> @subject('it', 'have').should.eql 'has'

      context 'we', ->
        Then -> @subject('we', 'have').should.eql 'have'

      context 'they', ->
        Then -> @subject('they', 'have').should.eql 'have'

    context 'be', ->
      context 'I', ->
        Then -> @subject('I', 'be').should.eql 'am'

      context 'you', ->
        Then -> @subject('you', 'be').should.eql 'are'

      context 'he', ->
        Then -> @subject('he', 'be').should.eql 'is'

      context 'she', ->
        Then -> @subject('she', 'be').should.eql 'is'

      context 'it', ->
        Then -> @subject('it', 'be').should.eql 'is'

      context 'we', ->
        Then -> @subject('we', 'be').should.eql 'are'

      context 'they', ->
        Then -> @subject('they', 'be').should.eql 'are'

    context 'can', ->
      context 'I', ->
        Then -> @subject('I', 'can').should.eql 'can'

      context 'you', ->
        Then -> @subject('you', 'can').should.eql 'can'

      context 'he', ->
        Then -> @subject('he', 'can').should.eql 'can'

      context 'she', ->
        Then -> @subject('she', 'can').should.eql 'can'

      context 'it', ->
        Then -> @subject('it', 'can').should.eql 'can'

      context 'we', ->
        Then -> @subject('we', 'can').should.eql 'can'

      context 'they', ->
        Then -> @subject('they', 'can').should.eql 'can'

    context 'could', ->
      context 'I', ->
        Then -> @subject('I', 'could').should.eql 'could'

      context 'you', ->
        Then -> @subject('you', 'could').should.eql 'could'

      context 'he', ->
        Then -> @subject('he', 'could').should.eql 'could'

      context 'she', ->
        Then -> @subject('she', 'could').should.eql 'could'

      context 'it', ->
        Then -> @subject('it', 'could').should.eql 'could'

      context 'we', ->
        Then -> @subject('we', 'could').should.eql 'could'

      context 'they', ->
        Then -> @subject('they', 'could').should.eql 'could'

    # Karma, surprisingly, does not allow the describe/context description
    # to be just "should"
    context 'the word "should"', ->
      context 'I', ->
        Then -> @subject('I', 'should').should.eql 'should'

      context 'you', ->
        Then -> @subject('you', 'should').should.eql 'should'

      context 'he', ->
        Then -> @subject('he', 'should').should.eql 'should'

      context 'she', ->
        Then -> @subject('she', 'should').should.eql 'should'

      context 'it', ->
        Then -> @subject('it', 'should').should.eql 'should'

      context 'we', ->
        Then -> @subject('we', 'should').should.eql 'should'

      context 'they', ->
        Then -> @subject('they', 'should').should.eql 'should'
        
    context 'may', ->
      context 'I', ->
        Then -> @subject('I', 'may').should.eql 'may'

      context 'you', ->
        Then -> @subject('you', 'may').should.eql 'may'

      context 'he', ->
        Then -> @subject('he', 'may').should.eql 'may'

      context 'she', ->
        Then -> @subject('she', 'may').should.eql 'may'

      context 'it', ->
        Then -> @subject('it', 'may').should.eql 'may'

      context 'we', ->
        Then -> @subject('we', 'may').should.eql 'may'

      context 'they', ->
        Then -> @subject('they', 'may').should.eql 'may'

  context 'strips "to"', ->
    Then -> @subject('I', 'to truncate').should.eql 'truncate'

  context 'append is true', ->
    Then -> @subject('he', 'to smear', true).should.eql 'he smears'
