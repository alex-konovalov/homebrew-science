class Cerulean < Formula
  homepage "https://sourceforge.net/projects/ceruleanassembler/"
  # doi "arXiv:1307.7933"
  # tag "bioinformatics"

  url "https://downloads.sourceforge.net/project/ceruleanassembler/Cerulean_v_0_1.tar.gz"
  sha256 "b6b9046fb1cf9980a169ccfe1a57c1060c6afbbe12e6b201eb8c47be0849b688"

  depends_on "abyss" => :recommended
  depends_on "numpy" => :python

  def install
    doc.install "README"
    libexec.install Dir["src/*"]
    prefix.install "data"
  end

  test do
    system "python", "#{libexec}/Cerulean.py", "-h"
  end
end
