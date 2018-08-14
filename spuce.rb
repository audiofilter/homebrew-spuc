class Spuce < Formula
  desc "A C++ library for DSP filters"
  homepage "http://pyspuc.com"
  head "https://github.com/audiofilter/spuce.git"
  url "https://github.com/audiofilter/spuce/archive/0.4.3.tar.gz"
  version "0.4.3"
  sha256 "5688e107b57640ba0485790d64eb16bff855f54f6fa5b2fdab568ee91f6dc687"

  depends_on "cmake" => :build
  depends on "qt5"
  
  def install
    qt5 = Formulary.factory 'qt5'
    mkdir "build" do
      system "cmake", "..", "-DBUILD_TESTING=OFF", "-DCMAKE_PREFIX_PATH=#{qt5.opt_prefix}", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end
end
