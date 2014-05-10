# coding: binary

hex_data = %w[
  42 4D
  46 00 00 00
  00 00
  00 00
  36 00 00 00

  28 00 00 00
  02 00 00 00
  02 00 00 00
  01 00
  18 00
  00 00 00 00
  10 00 00 00
  13 0B 00 00
  13 0B 00 00
  00 00 00 00
  00 00 00 00

  00 00 FF
  FF FF FF
  00 00
  FF 00 00
  00 FF 00
  00 00
]

out = hex_data.each_with_object("") { |e,s| s << Integer("0x#{e}") }

File.binwrite("example1.bmp", out)
