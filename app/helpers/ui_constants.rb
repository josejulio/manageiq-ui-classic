module UiConstants

  # Report Controller constants
  GRAPH_MAX_COUNT = 10

  VALID_PLANNING_VM_MODES = PlanningHelper::PLANNING_VM_MODES.keys.index_by(&:to_s)

  ALL_TIMEZONES = ActiveSupport::TimeZone.all.collect { |tz| ["(GMT#{tz.formatted_offset}) #{tz.name}", tz.name] }
  # Following line does not include timezones with partial hour offsets
  # ALL_TIMEZONES = ActiveSupport::TimeZone.all.collect{|tz| tz.utc_offset % 3600 == 0 ? ["(GMT#{tz.formatted_offset}) #{tz.name}",tz.name] : nil}.compact

  # Snapshot ages for delete_snapshots_by_age action type
  SNAPSHOT_AGES = {}
  (1..23).each { |a| SNAPSHOT_AGES[a.hours.to_i] = (a.to_s + (a < 2 ? _(" Hour") : _(" Hours"))) }
  (1..6).each { |a| SNAPSHOT_AGES[a.days.to_i] = (a.to_s + (a < 2 ? _(" Day") : _(" Days"))) }
  (1..4).each { |a| SNAPSHOT_AGES[a.weeks.to_i] = (a.to_s + (a < 2 ? _(" Week") : _(" Weeks"))) }

  # Expression constants
  EXP_TODAY = "Today"
  EXP_FROM = "FROM"
  EXP_IS = "IS"

  MIQ_AE_COPY_ACTIONS = %w(miq_ae_class_copy miq_ae_instance_copy miq_ae_method_copy)

end

# Make these constants globally available
include UiConstants
