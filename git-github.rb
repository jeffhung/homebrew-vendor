require 'formula'

class GitGithub < Formula
  head 'https://github.com/ingydotnet/git-hub.git', :branch => 'master'
  homepage 'https://github.com/ingydotnet/git-hub'
# md5 '1234567890ABCDEF1234567890ABCDEF'

  def patches
#   DATA
  end

  def install
    # Create library folder before install to force linking files.
    mkdir_p "#{HOMEBREW_PREFIX}/bin/git-hub.d"

    system "make", "PREFIX=#{prefix}", "INSTALL_LIB=#{prefix}/bin", "install"
  end
end

__END__

