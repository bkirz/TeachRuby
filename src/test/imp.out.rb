require(%{ruby/teach_ruby.rb})
x1 = __v(%{Hello, world! })
y1 = __v(%{I am very hungry...})
z1 = __v(%{I am going to make a sandwich!})
__tmp_1 = __v(:"concat")
__p(__tmp_1, y1, z1)
__tmp_2 = __v(:"concat")
__p(__tmp_2, x1, y1)
__tmp_3 = __v(:"puts")
__p(__tmp_3, x1)

