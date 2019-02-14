module example.com/m

replace (
	example.com/a => ./a
	example.com/a/b => ./b
)

replace (
	example.com/x => ./x
	example.com/x/v3 => ./v3
)

replace (
	example.com/y => ./y
	example.com/y/z/w => ./w
)

replace (
	example.com/v => ./v
	example.com/v v1.11.0 => ./v11
	example.com/v v1.12.0 => ./v12
)
