function Send-TwitterEvent {

<#
.SYNOPSIS
    Sending and receiving events

.DESCRIPTION
    POST direct_messages/events/new (message_create)
    
    Publishes a new message_create event resulting in a Direct Message sent to a specified user from the authenticating user. Returns an event if successful. Supports publishing Direct Messages with optional Quick Reply and media attachment. Replaces behavior currently provided by POST direct_messages/new.
    
    Requires a JSON POST body and Content-Type header to be set to application/json. Setting Content-Length may also be required if it is not automatically.


.NOTES
    This helper function was generated by the information provided here:
    https://developer.twitter.com/en/docs/direct-messages/sending-and-receiving/api-reference/new-event

#>
    [CmdletBinding()]
    Param(
        
    )
    Begin {

        [string]$Method      = 'POST'
        [string]$Resource    = '/direct_messages/events/new'
        [string]$ResourceUrl = 'https://api.twitter.com/1.1/direct_messages/events/new.json'

        [hashtable]$Parameters = $PSBoundParameters
                   $CmdletBindingParameters | % { $Parameters.Remove($_) }

    }
    Process {

        If (-Not $OAuthSettings) { $OAuthSettings = Get-TwitterOAuthSettings -Resource $Resource }
        Invoke-TwitterAPI -Resource $Resource -Method $Method -Parameters $Parameters -OAuthSettings $OAuthSettings

    }
    End {

    }
}
