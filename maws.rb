# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Maws < Formula
  desc "MFA AWS CLI"
  homepage "https://github.com/favadi/maws"
  version "0.0.2"
  license "BSD-2-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/favadi/maws/releases/download/v0.0.2/maws_0.0.2_Darwin_arm64.tar.gz"
      sha256 "99c5a9dd8a4be5bcac386f0df6a661a1f91bf720412ef9e97849d7fb1dcf989e"

      def install
        bin.install "maws""
        (bash_completion/"maws_bash_completer").write <<~EOS
        complete -C aws_completer maws
        EOS
        (zsh_completion/"_maws").write <<~EOS
        #compdef maws
        _maws () {
        local e
        e=$(dirname ${funcsourcetrace[1]%:*})/aws_zsh_completer.sh
        if [[ -f $e ]]; then source $e; fi
        }
        EOS
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/favadi/maws/releases/download/v0.0.2/maws_0.0.2_Darwin_x86_64.tar.gz"
      sha256 "051f144b5b92d6b3f4471e98712a34db7f893af06e0a615330b9fed1df1aa17b"

      def install
        bin.install "maws""
        (bash_completion/"maws_bash_completer").write <<~EOS
        complete -C aws_completer maws
        EOS
        (zsh_completion/"_maws").write <<~EOS
        #compdef maws
        _maws () {
        local e
        e=$(dirname ${funcsourcetrace[1]%:*})/aws_zsh_completer.sh
        if [[ -f $e ]]; then source $e; fi
        }
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/favadi/maws/releases/download/v0.0.2/maws_0.0.2_Linux_arm64.tar.gz"
      sha256 "ae62960b0bcb319f2bca190cd09b5bb7c5dda8a604112bc3863a340c9930647c"

      def install
        bin.install "maws""
        (bash_completion/"maws_bash_completer").write <<~EOS
        complete -C aws_completer maws
        EOS
        (zsh_completion/"_maws").write <<~EOS
        #compdef maws
        _maws () {
        local e
        e=$(dirname ${funcsourcetrace[1]%:*})/aws_zsh_completer.sh
        if [[ -f $e ]]; then source $e; fi
        }
        EOS
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/favadi/maws/releases/download/v0.0.2/maws_0.0.2_Linux_x86_64.tar.gz"
      sha256 "68ce0812ae6e4635ed6356628e9ca3adc44da81b276e771983ba77f965e9e8eb"

      def install
        bin.install "maws""
        (bash_completion/"maws_bash_completer").write <<~EOS
        complete -C aws_completer maws
        EOS
        (zsh_completion/"_maws").write <<~EOS
        #compdef maws
        _maws () {
        local e
        e=$(dirname ${funcsourcetrace[1]%:*})/aws_zsh_completer.sh
        if [[ -f $e ]]; then source $e; fi
        }
        EOS
      end
    end
  end

  depends_on "awscli"
end
