// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application";
import '@fortawesome/fontawesome-free/js/all';

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// カレンダー表示設定
import {Calendar} from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';

document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');
  // すべてのページでcalendarのjavascriptを読み込んでしまうため、読み込むidがなければ処理を終了するようif文の追加
  if(!calendarEl){
    return
  }
  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, interactionPlugin ],
    events: '/events.json',
    eventDisplay: 'block',
    locale: 'ja',
    height: 'auto',
    firstDay: 0,
    timeZone: 'Asia/Tokyo',
    headerToolbar: {
      start: '',
      center: 'title',
      end: 'today prev,next'
    },
    stickyHeaderDates: true,
    buttonText: {
       today: '今日へ'
    },
    navLinks: false,
    dayCellContent: function (e) {
      e.dayNumberText = e.dayNumberText.replace('日', '');
    }
  });

  calendar.render();
});