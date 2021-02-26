class StaffEvent < ApplicationRecord
    self.inheritance_column = nil

    belongs_to :member, class_name: "StaffMember", foreign_key: "staff_member_id"
    alias_attribute :occurred_at, :created_at

    DESCRIPTION = {
        logged_in: "ログイン",
        logged_out: "ログアウト",
        rejected: "ログイン拒否"
    }

    def description
        DESCRIPTION[type.to_sym]
    end
end
