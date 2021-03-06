# frozen_string_literal: true

# Utilities for tranforming noids to ARKs and Fedora treeified paths
module Identifier
  def self.ark_to_noid(ark)
    return unless (matches = %r{^ark:/\d{5}/(f\w{7,9})$}.match(ark))
    matches[1]
  end

  def self.ark_to_id(ark)
    ark_to_noid(ark)
  end
end
