module ScheduleHelper
  def weekdays
    [
      { label: "Monday", value: 1 },
      { label: "Tuesday", value: 2 },
      { label: "Wednesday", value: 3 },
      { label: "Thursday", value: 4 },
      { label: "Friday", value: 5 },
      { label: "Saturday", value: 6 },
      { label: "Sunday", value: 7 }
    ]
  end
end

# <!-- <table class="slots">
#       <thead>
#         <tr>
#           <th>Day</th>
#           <th>Opens at</th>
#           <th>Closes at</th>
#         </tr>
#       </thead>
#       <tbody>
#         <% weekdays.each do |day| %>
#           <%= s.fields_for :regular_schedules, s.object.regular_schedules.find_or_initialize_by(weekday: day[:value]) do |sched| %>
#             <tr>
#               <td>
#                 <%= sched.hidden_field :weekday %>
#                 <div class="checkbox">
#                   <%= sched.check_box :_destroy, {checked: sched.object.persisted?}, "0", "1" %>
#                   <%= sched.label :_destroy, day[:label] %>
#                 </div>
#               </td>
#               <td>
#                 <%= sched.label :opens_at, class: "visually-hidden" %>
#                 <%= sched.time_field :opens_at %>
#               </td>
#               <td>
#                <%= sched.label :closes_at, class: "visually-hidden" %>
#                <%= sched.time_field :closes_at %>
#               </td>
#             </tr>
#           <% end %>
#         <% end %>
#       </tbody>
#     </table> -->
