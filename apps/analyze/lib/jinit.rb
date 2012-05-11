# 
#   The MIT License
#  
#   Copyright 2006-2010 Karl W. Pfalzer.
#   Copyright 2012-     George P. Burdell
#  
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#   of this software and associated documentation files (the "Software"), to deal
#   in the Software without restriction, including without limitation the rights
#   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#   copies of the Software, and to permit persons to whom the Software is
#   furnished to do so, subject to the following conditions:
#  
#   The above copyright notice and this permission notice shall be included in
#   all copies or substantial portions of the Software.
#  
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#   THE SOFTWARE.
#
require 'java'

module Initialize
  #Load up the java side
  #SYSTEM and TOOL_ROOT are constants.
  SYSTEM = java.lang.System
  p = SYSTEM.getProperty("tool.root");
  p = '.' unless p
  TOOL_ROOT = File.expand_path(p)
  jars = ["#{TOOL_ROOT}/dist/parser.jar", "#{TOOL_ROOT}/dist/lib/antlr.jar"]
  jars.each { |jar| require jar }
end