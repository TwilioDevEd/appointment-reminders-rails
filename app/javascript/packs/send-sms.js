import $ from "jquery";

/**
 * Displays a message to the user in a colored box. Changes the color based
 * on the type of the message
 * @param {string} message text to show in the dialog
 * @param {'success' | 'error'} type whether the message should be shown as error or success
 */
function showMessage(message, type) {
  const dialogContent = document.getElementById("dialogContent");
  const dialogTitle = document.getElementById("dialogTitle");
  const dialog = document.getElementById("dialog");

  if (!dialogContent || !dialogTitle || !dialog) {
    return;
  }

  dialogContent.innerText = message;
  dialogTitle.innerText = type === "success" ? "SMS Sent!" : "Error";
  dialog.classList.remove("alert-success", "alert-danger", "d-none");
  dialog.classList.add(type === "success" ? "alert-success" : "alert-danger");
}

/**
 * Clears the `to` and `body` fields on the form.
 * @param {HTMLFormElement} form a form element that should have the fields cleared
 */
function clearForm(form) {
  form.to.value = null;
  form.body.value = null;
}

$(() => {
  if ($("#smsForm").length) {
    const form = $("#smsForm");
    form.on("submit", evt => {
      evt.preventDefault();
      $.post(
        "/send-sms",
        {
          to: event.target.to.value,
          body: event.target.body.value
        },
        "json"
      )
        .done(resp => {
          showMessage(resp.message, resp.status);
          if (resp.status === "success") {
            clearForm(form[0]);
          }
        })
        .fail(err => {
          showMessage(err.responseJSON.message, "error");
        });
    });
  }
});
