require "pry"

lf_dirs = Dir.glob("./*-*")
lf_dirs_size = lf_dirs.size
lf_dirs.each_with_index do |lf, i|
  p lf
  p "#{i}/#{lf_dirs_size}"

  mp_files = Dir.glob("#{lf}/*/*.mp")
  mp_files.each do |mp_file|
    `gzip #{mp_file}`
  end
end

