require 'formula'

class Mgzip < Formula
  homepage 'https://github.com/jerodsanto/mgzip'
  head 'https://github.com/jerodsanto/mgzip.git'
  version '1.2c'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}" 
    system "make"
    bin.install 'mgzip'
  end

  test do
    system "make test"
  end
end
