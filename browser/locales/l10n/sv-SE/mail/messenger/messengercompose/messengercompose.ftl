# This Source Code Form is subject to the terms of the Waterfox Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# Addressing widget

#   $type (String) - the type of the addressing row
remove-address-row-button =
    .title = Ta bort { $type }-fältet
#   $type (String) - the type of the addressing row
#   $count (Number) - the number of address pills currently present in the addressing row
address-input-type-aria-label =
    { $count ->
        [0] { $type }
        [one] { $type } med en adress, använd vänster piltangent för att fokusera på den.
       *[other] { $type } med { $count } adresser, använd vänster piltangent för att fokusera på dem.
    }
#   $email (String) - the email address
#   $count (Number) - the number of address pills currently present in the addressing row
pill-aria-label =
    { $count ->
        [one] { $email }: tryck på Enter för att redigera, Ta bort för att ta bort.
       *[other] { $email }, 1 av { $count }: tryck på Enter för att redigera, Ta bort för att ta bort.
    }
#   $email (String) - the email address
pill-tooltip-invalid-address = { $email } är inte en giltig e-postadress
#   $email (String) - the email address
pill-tooltip-not-in-address-book = { $email } finns inte i din adressbok
pill-action-edit =
    .label = Redigera adress
    .accesskey = R
pill-action-move-to =
    .label = Flytta till Till
    .accesskey = T
pill-action-move-cc =
    .label = Flytta till Kopia
    .accesskey = K
pill-action-move-bcc =
    .label = Flytta till Dold kopia
    .accesskey = D
pill-action-expand-list =
    .label = Expandera lista
    .accesskey = x

# Attachment widget

ctrl-cmd-shift-pretty-prefix =
    { PLATFORM() ->
        [macos] ⇧ ⌘{ " " }
       *[other] Ctrl+Shift+
    }
trigger-attachment-picker-key = A
toggle-attachment-pane-key = M
menuitem-toggle-attachment-pane =
    .label = Bifogningsfönstret
    .accesskey = B
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ toggle-attachment-pane-key }
toolbar-button-add-attachment =
    .label = Bifoga
    .tooltiptext = Lägg till en bilaga ({ ctrl-cmd-shift-pretty-prefix }{ trigger-attachment-picker-key })
add-attachment-notification-reminder =
    .label = Lägg till bilaga…
    .tooltiptext = { toolbar-button-add-attachment.tooltiptext }
add-attachment-notification-reminder2 =
    .label = Lägg till bilaga…
    .accesskey = L
    .tooltiptext = { toolbar-button-add-attachment.tooltiptext }
menuitem-attach-files =
    .label = Fil(er)…
    .accesskey = F
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ trigger-attachment-picker-key }
context-menuitem-attach-files =
    .label = Bifoga fil(er)…
    .accesskey = B
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ trigger-attachment-picker-key }
#   $count (Number) - the number of attachments in the attachment bucket
attachment-bucket-count =
    .value =
        { $count ->
            [1] { $count } bilaga
            [one] { $count } bilaga
           *[other] { $count } bilagor
        }
    .accesskey = b
expand-attachment-pane-tooltip =
    .tooltiptext = Visa bifogningsfönstret { ctrl-cmd-shift-pretty-prefix }{ toggle-attachment-pane-key }()
collapse-attachment-pane-tooltip =
    .tooltiptext = Dölj bifogningsfönstret ({ ctrl-cmd-shift-pretty-prefix }{ toggle-attachment-pane-key })
attachment-area-show =
    .title = Visa bifogningsfönstret ({ ctrl-cmd-shift-pretty-prefix }{ toggle-attachment-pane-key })
attachment-area-hide =
    .title = Dölj bifogningsfönstret ({ ctrl-cmd-shift-pretty-prefix }{ toggle-attachment-pane-key })
drop-file-label-attachment =
    { $count ->
        [one] Lägg till som bilaga
       *[other] Lägg till som bilagor
    }
drop-file-label-inline =
    { $count ->
        [one] Lägg till inline
       *[other] Lägg till inline
    }

# Reorder Attachment Panel

move-attachment-first-panel-button =
    .label = Flytta först
move-attachment-left-panel-button =
    .label = Flytta vänster
move-attachment-right-panel-button =
    .label = Flytta höger
move-attachment-last-panel-button =
    .label = Flytta sist
button-return-receipt =
    .label = Kvitto
    .tooltiptext = Begär ett returkvitto för detta meddelande

# Encryption

message-to-be-signed-icon =
    .alt = Signera meddelande
message-to-be-encrypted-icon =
    .alt = Kryptera meddelande

# Addressing Area

to-compose-address-row-label =
    .value = Till
#   $key (String) - the shortcut key for this field
to-compose-show-address-row-menuitem =
    .label = Fältet { to-compose-address-row-label.value }
    .accesskey = T
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ $key }
to-compose-show-address-row-label =
    .value = { to-compose-address-row-label.value }
    .tooltiptext = Visa fältet { to-compose-address-row-label.value } ({ to-compose-show-address-row-menuitem.acceltext })
cc-compose-address-row-label =
    .value = Kopia
#   $key (String) - the shortcut key for this field
cc-compose-show-address-row-menuitem =
    .label = Fältet { cc-compose-address-row-label.value }
    .accesskey = K
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ $key }
cc-compose-show-address-row-label =
    .value = { cc-compose-address-row-label.value }
    .tooltiptext = Visa fältet { cc-compose-address-row-label.value } ({ cc-compose-show-address-row-menuitem.acceltext })
bcc-compose-address-row-label =
    .value = Dold kopia
#   $key (String) - the shortcut key for this field
bcc-compose-show-address-row-menuitem =
    .label = Fältet { bcc-compose-address-row-label.value }
    .accesskey = D
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ $key }
bcc-compose-show-address-row-label =
    .value = { bcc-compose-address-row-label.value }
    .tooltiptext = Visa fältet { bcc-compose-address-row-label.value } ({ bcc-compose-show-address-row-menuitem.acceltext })
#   $count (Number) - the count of addresses in the "To" and "Cc" fields.
many-public-recipients-info = { $count } mottagare i fältet Till och Kopia kan se varandras adresser. Du kan undvika att avslöja mottagare genom att använda Dold kopia istället.
to-address-row-label =
    .value = Till
#   $key (String) - the shortcut key for this field
show-to-row-main-menuitem =
    .label = Fältet till
    .accesskey = T
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ $key }
# No acceltext should be shown.
# The label should match the show-to-row-button text.
show-to-row-extra-menuitem =
    .label = Till
    .accesskey = T
#   $key (String) - the shortcut key for this field
show-to-row-button = Till
    .title = Visa fält till ({ ctrl-cmd-shift-pretty-prefix }{ $key })
cc-address-row-label =
    .value = Kopia
#   $key (String) - the shortcut key for this field
show-cc-row-main-menuitem =
    .label = Fältet kopia
    .accesskey = k
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ $key }
# No acceltext should be shown.
# The label should match the show-cc-row-button text.
show-cc-row-extra-menuitem =
    .label = Kopia
    .accesskey = K
#   $key (String) - the shortcut key for this field
show-cc-row-button = Kopia
    .title = Visa fältet kopia ({ ctrl-cmd-shift-pretty-prefix }{ $key })
bcc-address-row-label =
    .value = Dold kopia
#   $key (String) - the shortcut key for this field
show-bcc-row-main-menuitem =
    .label = Fältet dold kopia
    .accesskey = d
    .acceltext = { ctrl-cmd-shift-pretty-prefix }{ $key }
# No acceltext should be shown.
# The label should match the show-bcc-row-button text.
show-bcc-row-extra-menuitem =
    .label = Dold kopia
    .accesskey = D
#   $key (String) - the shortcut key for this field
show-bcc-row-button = Dold kopia
    .title = Visa fältet dold kopia ({ ctrl-cmd-shift-pretty-prefix }{ $key })
extra-address-rows-menu-button =
    .title = Andra adresseringsfält att visa
#   $count (Number) - the count of addresses in the "To" and "Cc" fields.
many-public-recipients-notice =
    { $count ->
        [one] Ditt meddelande har en offentlig mottagare. Du kan undvika att avslöja mottagare genom att använda Dold kopia istället.
       *[other] { $count } mottagare i fältet Till och Kopia kan se varandras adresser. Du kan undvika att avslöja mottagare genom att använda Dold kopia istället.
    }
many-public-recipients-bcc =
    .label = Använd dold kopia istället
    .accesskey = A
many-public-recipients-ignore =
    .label = Håll mottagarna offentliga
    .accesskey = H
many-public-recipients-prompt-title = För många offentliga mottagare
#   $count (Number) - the count of addresses in the public recipients fields.
many-public-recipients-prompt-msg =
    { $count ->
        [one] Ditt meddelande har en offentlig mottagare. Detta kan vara en integritetsfråga. Du kan undvika detta genom att flytta mottagaren från Till/Kopia till Dold kopia istället.
       *[other] Ditt meddelande har { $count } offentliga mottagare, som kommer att kunna se varandras adresser. Detta kan vara en integritetsfråga. Du kan undvika att avslöja mottagare genom att flytta mottagare från Till/Kopia till Dold kopia istället.
    }
many-public-recipients-prompt-cancel = Avbryt sändning
many-public-recipients-prompt-send = Skicka ändå

## Notifications

# Variables:
# $identity (string) - The name of the used identity, most likely an email address.
compose-missing-identity-warning = En unik identitet som matchar Från-adressen hittades inte. Meddelandet skickas med det aktuella Från-fältet och inställningar från identitet { $identity }.
encrypted-bcc-warning = När du skickar ett krypterat meddelande döljs inte mottagare i dold kopia helt. Alla mottagare kan kanske identifiera dem.
encrypted-bcc-ignore-button = Förstått

## Editing


# Tools

compose-tool-button-remove-text-styling =
    .tooltiptext = Ta bort textstyling
