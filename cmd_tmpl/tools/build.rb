#!/usr/bin/ruby
# build.rb - Ruby build script for Xcode-Scheme template
# Created on 7/23/2009
#
# Copyright (c) 2009, Box of Rats LLC
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#  * Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#  * Neither the name of the Box of Rats LLC nor the names of its contributors
#    may be used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

prj_dir = ENV['PROJECT_DIR']
gsc = ENV['GSC']
puts "build phase #{ARGV[0]}"
puts "GSC = #{gsc}"

if ARGV[0] == "build" or ARGV.length == 0 then
	puts "building scheme files"
  sources = ""
  Dir.chdir(prj_dir + "/scheme")
  scheme_files = Dir.glob("*.scm")
  scheme_files.each do |name|
    if name != "init.scm" then
      sources << " #{name}"
    end
  end
	exec "#{gsc} -:d- -link #{sources} init.scm"
elsif ARGV[0] == "clean" then
	puts "cleaning scheme files"
	exec "rm -f scheme/*.c"
end

