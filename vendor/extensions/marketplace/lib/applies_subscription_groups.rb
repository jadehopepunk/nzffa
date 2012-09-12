class AppliesSubscriptionGroups
  def self.apply(subscription, reader)
    if subscription.belong_to_fft?
      reader.groups << Group.find(NzffaSettings.fft_marketplace_group_id)
    end

    case subscription.membership_type
    when 'full'
      reader.groups << Group.find(NzffaSettings.full_membership_group_id)
      reader.groups << Group.find(NzffaSettings.tree_grower_magazine_group_id)

      subscription.branches.each do |branch|
        reader.groups << branch.group unless branch.group.nil?
      end

      
      subscription.action_groups.each do |action_group|
        reader.groups << action_group.group unless action_group.group.nil?
      end

    when 'casual'
      if subscription.receive_tree_grower_magazine?
        reader.groups << Group.find(NzffaSettings.tree_grower_magazine_group_id)
      end
    else
      raise "unrecognised membership type #{subscription.membership_type}"
    end
  end

  def self.remove(subscription, reader)
    group_ids = []
    group_ids << NzffaSettings.fft_marketplace_group_id
    group_ids << NzffaSettings.full_membership_group_id
    group_ids << NzffaSettings.tree_grower_magazine_group_id
    subscription.branches.each do |branch|
      group_ids << branch.group_id unless action_group.group.nil?
    end
    subscription.action_groups.each do |action_group|
      group_ids << action_group.group_id unless action_group.group.nil?
    end
    group_ids.each do |group_id|
      group = Group.find_by_id(group_id)
      if reader.groups.include? group
        reader.groups.delete(group)
      end
    end
  end
end
