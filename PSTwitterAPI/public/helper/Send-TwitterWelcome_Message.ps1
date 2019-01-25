function Send-TwitterWelcome_Message {

<#
.SYNOPSIS
    Welcome Messages

.DESCRIPTION
    POST direct_messages/welcome_messages/new
    
    Creates a new Welcome Message that will be stored and sent in the future from the authenticating user in defined circumstances. Returns the message template if successful. Supports publishing with the same elements as Direct Messages (e.g. Quick Replies, media attachments).
    
    Requires a JSON POST body and Content-Type header to be set to application/json. Setting Content-Length may also be required if it is not automatically.
    
    See the Welcome Messages overview to learn how to work with Welcome Messages.


.NOTES
    This helper function was generated by the information provided here:
    https://developer.twitter.com/en/docs/direct-messages/welcome-messages/api-reference/new-welcome-message

#>
    [CmdletBinding()]
    Param(
        
    )
    Begin {

        [string]$Method      = 'POST'
        [string]$Resource    = '/direct_messages/welcome_messages/new'
        [string]$ResourceUrl = 'https://api.twitter.com/1.1/direct_messages/welcome_messages/new.json'

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
