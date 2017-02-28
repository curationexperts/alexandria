# frozen_string_literal: true

# Methods for Querying Repository to find Embargoed Objects
module Worthwhile::EmbargoService
  # Returns all assets with embargo release date set to a date in the past
  def self.assets_with_expired_embargoes
    ActiveFedora::Base.where("embargo_release_date_dtsi:[* TO NOW]")
  end

  # Returns all assets with embargo release date set
  #   (assumes that when lease visibility is applied to assets
  #    whose leases have expired, the lease expiration date will be removed from its metadata)
  def self.assets_under_embargo
    ActiveFedora::Base.where("embargo_release_date_dtsi:*")
  end

  # Returns all assets that have had embargoes deactivated in the past.
  def self.assets_with_deactivated_embargoes
    ActiveFedora::Base.where("embargo_history_ssim:*")
  end
end
