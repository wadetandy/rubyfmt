a = <<EOD
part 1 of heredoc #{ "not a heredoc" + <<EOM }
eom part
EOM
part 2 of heredoc
EOD


b = <<-EOD
oweqijfoiwjefqwoefij
EOD


def foo
  c = <<~EOD
    oqweijfoqwiejf
  EOD
  puts c
end

d = {
  msg: <<~EOD,
    heredoc msg
  EOD
  opts: {
    foo: 'bar'
  }
}

puts a
puts b
foo
puts d
