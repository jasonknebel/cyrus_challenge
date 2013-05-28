@pipe_regex = /^
  (?<last>\w+)\W+
  (?<first>\w+)\W+
  \w\W+
  (?<gender>\w)\W+
  (?<color>\S+)\W+
  (?<birthday>\S+)
$/x

@comma_regex = /^
  (?<last>\w+)\W+
  (?<first>\w+)\W+
  (?<gender>\w+)\W+
  (?<color>\w+)\W+
  (?<birthday>\S+)
$/x

@space_regex = /^
  (?<last>\w+)\s
  (?<first>\w+)\s
  \w\s
  (?<gender>\w)\s
  (?<birthday>\S+)\s
  (?<color>\w+)
$/x

@dob_regex = /^
  (?<month>\d+)\D
  (?<day>\d+)\D
  (?<year>\d+)
$/x
