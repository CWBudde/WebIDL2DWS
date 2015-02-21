object FormWebIDL: TFormWebIDL
  Left = 0
  Top = 0
  Caption = 'WebIDL Processor'
  ClientHeight = 766
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterMessages: TSplitter
    Left = 0
    Top = 647
    Width = 1000
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Visible = False
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 747
    Width = 1000
    Height = 19
    Panels = <
      item
        Text = 'Task'
        Width = 120
      end
      item
        Text = 'Status'
        Width = 200
      end
      item
        Style = psOwnerDraw
        Text = 'Progress'
        Width = 256
      end>
    OnDrawPanel = StatusBarDrawPanel
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 647
    ActivePage = TabHTML
    Align = alClient
    TabOrder = 1
    object TabHTML: TTabSheet
      Caption = 'HTML'
      ImageIndex = 1
      object SynEditHTML: TSynEdit
        Left = 0
        Top = 0
        Width = 992
        Height = 619
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 0
        Highlighter = SynHTMLSyn
        ReadOnly = True
        SearchEngine = SynEditSearch
        OnGutterPaint = SynEditGutterPaint
        OnStatusChange = SynEditStatusChange
        FontSmoothing = fsmNone
      end
    end
    object TabWebIDL: TTabSheet
      Caption = 'Web IDL'
      object SynEditWebIDL: TSynEdit
        Left = 0
        Top = 0
        Width = 992
        Height = 619
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 0
        SearchEngine = SynEditSearch
        OnGutterPaint = SynEditGutterPaint
        OnStatusChange = SynEditStatusChange
        FontSmoothing = fsmNone
      end
    end
    object TabPascalDWS: TTabSheet
      Caption = 'Object Pascal'
      ImageIndex = 3
      object SynEditDWS: TSynEdit
        Left = 0
        Top = 0
        Width = 992
        Height = 619
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Highlighter = SynDWSSyn
        Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoRightMouseMovesCursor, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoSmartTabs, eoTabIndent, eoTabsToSpaces]
        SearchEngine = SynEditSearch
        TabWidth = 2
        OnGutterPaint = SynEditGutterPaint
        OnStatusChange = SynEditStatusChange
        FontSmoothing = fsmNone
      end
    end
  end
  object TreeMessages: TVirtualStringTree
    Left = 0
    Top = 650
    Width = 1000
    Height = 97
    Align = alBottom
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.MainColumn = -1
    TabOrder = 2
    TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowTreeLines, toThemeAware, toUseBlendedImages]
    Visible = False
    OnDblClick = TreeMessagesDblClick
    OnFreeNode = TreeMessagesFreeNode
    OnGetText = TreeMessagesGetText
    Columns = <>
  end
  object MainMenu: TMainMenu
    Left = 120
    Top = 64
    object MenuItemFile: TMenuItem
      Caption = '&File'
      object MenuItemFileOpen: TMenuItem
        Action = ActionFileOpen
      end
      object MenuItemFileSaveAs: TMenuItem
        Action = ActionFileSaveAs
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MenuItemFetchFrom: TMenuItem
        Action = ActionFetchFrom
      end
      object MenuItemFetchfromWhatWG: TMenuItem
        Action = ActionFetchFromWhatWG
      end
      object MenuItemFetchFromW3C: TMenuItem
        Caption = 'Fetch from W3C'
        object MenuItemFetchAmbientLightAPI: TMenuItem
          Action = ActionFetchAmbientLightAPI
        end
        object MenuItemFetchBatteryAPI: TMenuItem
          Action = ActionFetchBatteryAPI
        end
        object MenuItemFetchBluetoothAPI: TMenuItem
          Action = ActionFetchBluetoothAPI
        end
        object MenuItemFetchGeolocationAPI: TMenuItem
          Action = ActionFetchGeolocationAPI
        end
        object MenuItemFetchFileAPI: TMenuItem
          Action = ActionFetchFileAPI
        end
        object MenuItemFetchHtmlMediaCaptureAPI: TMenuItem
          Action = ActionFetchHTMLMediaCaptureAPI
        end
        object MenuItemFetchMediaCaptureAndStreamsAPI: TMenuItem
          Action = ActionFetchMediaCaptureAndStreamsAPI
        end
        object MenuItemFetchStreamRecorderAPI: TMenuItem
          Action = ActionFetchMediaStreamRecordingAPI
        end
        object MenuItemFetchMIDIAPI: TMenuItem
          Action = ActionFetchMidiAPI
        end
        object MenuItemFetchNetworkInformationAPI: TMenuItem
          Action = ActionFetchNetworkInformationAPI
        end
        object MenuItemFetchNetworkServiceDiscoveryAPI: TMenuItem
          Action = ActionFetchNetworkServiceDiscoveryAPI
        end
        object MenuItemFetchPageVisibilityAPI: TMenuItem
          Action = ActionFetchPageVisibilityAPI
        end
        object MenuItemFetchPerformanceTimelineAPI: TMenuItem
          Action = ActionFetchPerformanceTimeLineAPI
        end
        object MenuItemFetchPickContactsIntentAPI: TMenuItem
          Action = ActionFetchPickContactsIntentAPI
        end
        object MenuItemFetchPickMediaIntendAPI: TMenuItem
          Action = ActionFetchPickMediaIntendAPI
        end
        object MenuItemFetchProximityAPI: TMenuItem
          Action = ActionFetchProximityAPI
        end
        object MenuItemFetchResourceTimingAPI: TMenuItem
          Action = ActionFetchResourceTimingAPI
        end
        object MenuItemFetchServerSentEventsAPI: TMenuItem
          Action = ActionFetchServerSendEventsAPI
        end
        object MenuItemFetchSVG11: TMenuItem
          Action = ActionFetchSVG
        end
        object MenuItemFetchUserTimingsAPI: TMenuItem
          Action = ActionFetchUserTimingsAPI
        end
        object MenuItemFetchVibrationAPI: TMenuItem
          Action = ActionFetchVibrationAPI
        end
        object MenuItemFetchWebAudioAPI: TMenuItem
          Action = ActionFetchWebAudioAPI
          Caption = 'Web Audio API'
        end
        object MenuItemFetchWebCryptoKeyDiscovery: TMenuItem
          Action = ActionFetchWebCryptoKeyDiscoveryAPI
        end
        object MenuItemFetchWebIntentsAPI: TMenuItem
          Action = ActionFetchWebIntentsAPI
        end
        object MenuItemFetchWebRTCAPI: TMenuItem
          Action = ActionFetchWebRTC
        end
        object MenuItemFetchWebSocketAPI: TMenuItem
          Action = ActionFetchWebSocketAPI
        end
        object MenuItemFetchWebWorkersAPI: TMenuItem
          Action = ActionFetchWebWorkersAPI
        end
        object MenuItemFetchWidgetInterface: TMenuItem
          Action = ActionFetchWidgetInterfaceAPI
        end
      end
      object MenuItemFetchFromWAC: TMenuItem
        Caption = 'Fetch From WAC'
        object MenuItemFetchFromWACAccelerometer: TMenuItem
          Action = ActionFetchWacAccelerometer
        end
        object MenuItemFetchFromWACCalender: TMenuItem
          Action = ActionFetchWacCalender
        end
        object MenuItemFetchFromWACCamera: TMenuItem
          Action = ActionFetchWacCamera
        end
        object MenuItemFetchFromWACContacts: TMenuItem
          Action = ActionFetchWacContacts
        end
        object MenuItemFetchFromWACCore: TMenuItem
          Action = ActionFetchWacCore
        end
        object MenuItemFetchFromWACIntegration: TMenuItem
          Action = ActionFetchWacDeviceIntegration
        end
        object MenuItemFetchFromWACDeviceStatus: TMenuItem
          Action = ActionFetchWacDeviceStatus
        end
        object MenuItemFetchFromWACFileSystem: TMenuItem
          Action = ActionFetchWacFileSystem
        end
        object MenuItemFetchFromWACGeolocation: TMenuItem
          Action = ActionFetchWacGeolocation
        end
        object MenuItemFetchFromWACMessaging: TMenuItem
          Action = ActionFetchWacMessaging
        end
        object MenuItemFetchFromWACOrientation: TMenuItem
          Action = ActionFetchWacOrientation
        end
        object MenuItemFetchFromWACTasks: TMenuItem
          Action = ActionFetchWacTasks
        end
        object MenuItemFetchFromWACViewpointFeature: TMenuItem
          Action = ActionFetchWacViewpointFeature
        end
        object MenuItemFetchFromWACWebview: TMenuItem
          Action = ActionFetchWacWebview
        end
      end
      object MenuItemFetchFromWebinos: TMenuItem
        Caption = 'Fetch from Webinos.org'
        object MenuItemFetchAppLauncherAPI: TMenuItem
          Action = ActionFetchWebinosAppLauncher
        end
        object MenuItemFetchApp2AppMessagingAPI: TMenuItem
          Action = ActionFetchWebinosApp2AppMessagingAPI
        end
        object MenuItemFetchAppStateSynchronisationAPI: TMenuItem
          Action = ActionFetchWebinosAppStateSynchronisationAPI
        end
        object MenuItemFetchAuthenticationAPI: TMenuItem
          Action = ActionFetchWebinosAuthenticationAPI
        end
        object MenuItemContactsAPI: TMenuItem
          Action = ActionFetchWebinosContactsAPI
        end
        object MenuItemContextAPI: TMenuItem
          Action = ActionFetchWebinosContextAPI
        end
        object MenuItemDeviceInteractionAPI: TMenuItem
          Action = ActionFetchWebinosDeviceInteractionAPI
        end
        object MenuItemDiscoveryAPI: TMenuItem
          Action = ActionFetchWebinosDiscoveryAPI
        end
        object MenuItemFetchGenericActuatorAPI: TMenuItem
          Action = ActionFetchWebinosGenericActuatorAPI
        end
        object MenuItemFetchGenericSensorAPI: TMenuItem
          Action = ActionFetchWebinosGenericSensorAPI
        end
        object MenuItemFetchTVControlAPI: TMenuItem
          Action = ActionFetchWebinosTVControlAPI
        end
        object MenuItemFetchMediaContentAPI: TMenuItem
          Action = ActionFetchWebinosMediaContentAPI
        end
        object MenuItemFetchMessagingAPI: TMenuItem
          Action = ActionFetchWebinosMessagingAPI
        end
        object MenuItemFetchNavigationAPI: TMenuItem
          Action = ActionFetchWebinosNavigationAPI
        end
        object MenuItemFetchNFCAPI: TMenuItem
          Action = ActionFetchWebinosNFCAPI
        end
        object MenuItemFetchPaymentAPI: TMenuItem
          Action = ActionFetchWebinosPaymentAPI
        end
        object MenuItemFetchRemoteUIAPI: TMenuItem
          Action = ActionFetchWebinosRemoteUIAPI
        end
        object MenuItemFetchSecureElementAPI: TMenuItem
          Action = ActionFetchWebinosSecureElementAPI
        end
        object MenuItemFetchVehicleAPI: TMenuItem
          Action = ActionFetchWebinosVehicleAPI
        end
        object MenuItemFetchWebinosCoreInterface: TMenuItem
          Action = ActionFetchWebinosCoreInterfaceAPI
        end
        object MenuItemFetchWebinosWidgetAPI: TMenuItem
          Action = ActionFetchWebinosWidgetAPI
        end
        object MenuItemFetchWebNotificationsAPI: TMenuItem
          Action = ActionFetchWebinosWebNotificationsAPI
        end
      end
      object MenuItemFetchFromOtherSources: TMenuItem
        Caption = 'Fetch from Other Sources'
        object MenuItemWebSpeechAPI: TMenuItem
          Action = ActionFetchWebSpeechApi
        end
        object MenuItemFetchWebKitIDL: TMenuItem
          Action = ActionFetchWebKitIDL
        end
      end
      object MenuItemFetchFromWebCL: TMenuItem
        Action = ActionFetchWebCL
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuItemFileExit: TMenuItem
        Action = ActionFileExit
      end
    end
    object MenuItemEdit: TMenuItem
      Caption = '&Edit'
      object MenuItemEditUndo: TMenuItem
        Action = ActionEditUndo
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MenuItemEditCut: TMenuItem
        Action = ActionEditCut
      end
      object MenuItemEditCopy: TMenuItem
        Action = ActionEditCopy
      end
      object MenuItemEditPaste: TMenuItem
        Action = ActionEditPaste
      end
      object MenuItemEditDelete: TMenuItem
        Action = ActionEditDelete
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MenuItemEditSelectAll: TMenuItem
        Action = ActionEditSelectAll
      end
    end
    object MenuItemSearch: TMenuItem
      Caption = '&Search'
      object MenuItemSearchFind: TMenuItem
        Action = ActionSearchFind
      end
      object MenuItemSearchFindNext: TMenuItem
        Action = ActionSearchFindNext
      end
      object MenuItemSearchReplace: TMenuItem
        Action = ActionSearchReplace
      end
    end
    object MenuItemProcessing: TMenuItem
      Caption = '&Processing'
      object MenuItemProcessingExtractWebIDL: TMenuItem
        Action = ActionExtractWebIDL
      end
      object MenuItemTransformWebIDL: TMenuItem
        Action = ActionTransformWebIDL
      end
    end
  end
  object ActionList: TActionList
    Left = 192
    Top = 64
    object ActionFileExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Close application'
      ShortCut = 16465
    end
    object ActionFileOpen: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Dialog.DefaultExt = '.htm'
      Dialog.Filter = 'HTML File (*.htm; *.html)|*.htm; *.html|Web IDL (*.idl)|*.idl'
      Hint = 'Open|Open selected file'
      ShortCut = 16463
      OnAccept = ActionFileOpenAccept
    end
    object ActionExtractWebIDL: TAction
      Caption = 'Extract Web &IDL'
      ShortCut = 121
      OnExecute = ActionExtractWebIDLExecute
    end
    object ActionFetchFromWhatWG: TAction
      Category = 'Fetch'
      Caption = 'Fetch from WhatWG.org'
      OnExecute = ActionFetchFromWhatWGExecute
    end
    object ActionFetchAmbientLightAPI: TAction
      Category = 'Fetch'
      Caption = 'Ambient Light API'
      OnExecute = ActionFetchAmbientLightAPIExecute
    end
    object ActionFetchBatteryAPI: TAction
      Category = 'Fetch'
      Caption = 'Battery API'
      OnExecute = ActionFetchBatteryAPIExecute
    end
    object ActionFetchBluetoothAPI: TAction
      Category = 'Fetch'
      Caption = 'Bluetooth API'
      OnExecute = ActionFetchBluetoothAPIExecute
    end
    object ActionFetchFrom: TAction
      Category = 'Fetch'
      Caption = 'Fetch from...'
      ShortCut = 122
      OnExecute = ActionFetchFromExecute
    end
    object ActionFetchGeolocationAPI: TAction
      Category = 'Fetch'
      Caption = 'Geolocation API'
      OnExecute = ActionFetchGeolocationAPIExecute
    end
    object ActionFetchFileAPI: TAction
      Category = 'Fetch'
      Caption = 'File API'
      OnExecute = ActionFetchFileAPIExecute
    end
    object ActionFetchHTMLMediaCaptureAPI: TAction
      Category = 'Fetch'
      Caption = 'HTML Media Capture API'
      OnExecute = ActionFetchHTMLMediaCaptureAPIExecute
    end
    object ActionFetchMediaCaptureAndStreamsAPI: TAction
      Category = 'Fetch'
      Caption = 'Media Capture and Streams API'
      OnExecute = ActionFetchMediaCaptureAndStreamsAPIExecute
    end
    object ActionFetchMediaStreamRecordingAPI: TAction
      Category = 'Fetch'
      Caption = 'Media Stream Recording API'
      OnExecute = ActionFetchMediaStreamRecordingAPIExecute
    end
    object ActionFetchMidiAPI: TAction
      Category = 'Fetch'
      Caption = 'MIDI API'
      OnExecute = ActionFetchMidiAPIExecute
    end
    object ActionFetchNetworkInformationAPI: TAction
      Category = 'Fetch'
      Caption = 'Network Information API'
      OnExecute = ActionFetchNetworkInformationAPIExecute
    end
    object ActionFetchNetworkServiceDiscoveryAPI: TAction
      Category = 'Fetch'
      Caption = 'Network Service Discovery API'
      OnExecute = ActionFetchNetworkServiceDiscoveryAPIExecute
    end
    object ActionFetchPageVisibilityAPI: TAction
      Category = 'Fetch'
      Caption = 'Page Visibility API'
      OnExecute = ActionFetchPageVisibilityAPIExecute
    end
    object ActionFetchPerformanceTimeLineAPI: TAction
      Category = 'Fetch'
      Caption = 'Performance Timeline API'
      OnExecute = ActionFetchPerformanceTimeLineAPIExecute
    end
    object ActionFetchPickContactsIntentAPI: TAction
      Category = 'Fetch'
      Caption = 'Pick Contacts Intent API'
      OnExecute = ActionFetchPickContactsIntentAPIExecute
    end
    object ActionFetchPickMediaIntendAPI: TAction
      Category = 'Fetch'
      Caption = 'Pick Media Intend API'
      OnExecute = ActionFetchPickMediaIntendAPIExecute
    end
    object ActionFetchProximityAPI: TAction
      Category = 'Fetch'
      Caption = 'Proximity API'
      OnExecute = ActionFetchProximityAPIExecute
    end
    object ActionFetchResourceTimingAPI: TAction
      Category = 'Fetch'
      Caption = 'Resource Timing API'
      OnExecute = ActionFetchResourceTimingAPIExecute
    end
    object ActionFetchServerSendEventsAPI: TAction
      Category = 'Fetch'
      Caption = 'Server-Sent Events API'
      OnExecute = ActionFetchServerSendEventsAPIExecute
    end
    object ActionFetchSVG: TAction
      Category = 'Fetch'
      Caption = 'SVG 1.1'
      OnExecute = ActionFetchSVGExecute
    end
    object ActionFetchUserTimingsAPI: TAction
      Category = 'Fetch'
      Caption = 'User Timings API'
      OnExecute = ActionFetchUserTimingsAPIExecute
    end
    object ActionFetchVibrationAPI: TAction
      Category = 'Fetch'
      Caption = 'Vibration API'
      OnExecute = ActionFetchVibrationAPIExecute
    end
    object ActionFetchWebAudioAPI: TAction
      Category = 'Fetch'
      Caption = 'WebAudio API'
      OnExecute = ActionFetchWebAudioAPIExecute
    end
    object ActionFetchWebCryptoKeyDiscoveryAPI: TAction
      Category = 'Fetch'
      Caption = 'WebCrypto Key Discovery API'
      OnExecute = ActionFetchWebCryptoKeyDiscoveryAPIExecute
    end
    object ActionFetchWebIntentsAPI: TAction
      Category = 'Fetch'
      Caption = 'Web Intents API'
      OnExecute = ActionFetchWebIntentsAPIExecute
    end
    object ActionEditCut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ShortCut = 16472
    end
    object ActionEditCopy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ShortCut = 16451
    end
    object ActionEditPaste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ShortCut = 16470
    end
    object ActionEditSelectAll: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object ActionEditUndo: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ShortCut = 16474
    end
    object ActionEditDelete: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ShortCut = 46
    end
    object ActionSearchFind: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Searches for current selection'
      ShortCut = 16454
    end
    object ActionSearchFindNext: TSearchFindNext
      Category = 'Search'
      Caption = '&Search next'
      Hint = 'Search next'
      SearchFind = ActionSearchFind
      ShortCut = 114
    end
    object ActionSearchReplace: TSearchReplace
      Category = 'Search'
      Caption = '&Replace'
      Hint = 'Replace|Replace selected text'
      ShortCut = 16466
      SecondaryShortCuts.Strings = (
        'Strg+H')
    end
    object ActionFileSaveAs: TFileSaveAs
      Category = 'File'
      Caption = 'Save As...'
      Dialog.DefaultExt = '.txt'
      Dialog.Filter = 
        'Text File (*.txt)|*.txt|HTML (*.html)|*.html|Pascal (*.pas)|*.pa' +
        's'
      Hint = 'Save As|Stores active document'
      ShortCut = 16467
      BeforeExecute = ActionFileSaveAsBeforeExecute
      OnAccept = ActionFileSaveAsAccept
    end
    object ActionFetchWebRTC: TAction
      Category = 'Fetch'
      Caption = 'WebRTC API'
      OnExecute = ActionFetchWebRTCExecute
    end
    object ActionFetchWebSocketAPI: TAction
      Category = 'Fetch'
      Caption = 'Web Socket API'
      OnExecute = ActionFetchWebSocketAPIExecute
    end
    object ActionFetchWebSpeechApi: TAction
      Category = 'Fetch'
      Caption = 'Web Speech API'
      OnExecute = ActionFetchWebSpeechApiExecute
    end
    object ActionFetchWebWorkersAPI: TAction
      Category = 'Fetch'
      Caption = 'Web Workers API'
      OnExecute = ActionFetchWebWorkersAPIExecute
    end
    object ActionTransformWebIDL: TAction
      Caption = '&Transform Web IDL'
      ShortCut = 120
      OnExecute = ActionTransformWebIDLExecute
    end
    object ActionFetchWidgetInterfaceAPI: TAction
      Category = 'Fetch'
      Caption = 'Widget Interface API'
      OnExecute = ActionFetchWidgetInterfaceAPIExecute
    end
    object ActionFetchWebinosMediaContentAPI: TAction
      Category = 'Fetch'
      Caption = 'MediaContent API'
      OnExecute = ActionFetchWebinosMediaContentAPIExecute
    end
    object ActionFetchWebinosGenericActuatorAPI: TAction
      Category = 'Fetch'
      Caption = 'Generic Actuator API'
      OnExecute = ActionFetchWebinosGenericActuatorAPIExecute
    end
    object ActionFetchWebinosApp2AppMessagingAPI: TAction
      Category = 'Fetch'
      Caption = 'App2App Messaging API'
      OnExecute = ActionFetchWebinosApp2AppMessagingAPIExecute
    end
    object ActionFetchWebinosAppStateSynchronisationAPI: TAction
      Category = 'Fetch'
      Caption = 'AppState Synchronisation API'
      OnExecute = ActionFetchWebinosAppStateSynchronisationAPIExecute
    end
    object ActionFetchWebinosAuthenticationAPI: TAction
      Category = 'Fetch'
      Caption = 'Authentication API'
      OnExecute = ActionFetchWebinosAuthenticationAPIExecute
    end
    object ActionFetchWebinosContactsAPI: TAction
      Category = 'Fetch'
      Caption = 'Contacts API'
      OnExecute = ActionFetchWebinosContactsAPIExecute
    end
    object ActionFetchWebinosContextAPI: TAction
      Category = 'Fetch'
      Caption = 'Context API'
      OnExecute = ActionFetchWebinosContextAPIExecute
    end
    object ActionFetchWebinosDeviceInteractionAPI: TAction
      Category = 'Fetch'
      Caption = 'Device Interaction API'
      OnExecute = ActionFetchWebinosDeviceInteractionAPIExecute
    end
    object ActionFetchWebinosDeviceStatusAPI: TAction
      Category = 'Fetch'
      Caption = 'Device Status API'
      OnExecute = ActionFetchWebinosDeviceStatusAPIExecute
    end
    object ActionFetchWebinosAppLauncher: TAction
      Category = 'Fetch'
      Caption = 'AppLauncher API'
      OnExecute = ActionFetchWebinosAppLauncherExecute
    end
    object ActionFetchWebinosMessagingAPI: TAction
      Category = 'Fetch'
      Caption = 'Messaging API'
      OnExecute = ActionFetchWebinosMessagingAPIExecute
    end
    object ActionFetchWebinosNavigationAPI: TAction
      Category = 'Fetch'
      Caption = 'Navigation API'
      OnExecute = ActionFetchWebinosNavigationAPIExecute
    end
    object ActionFetchWebinosNFCAPI: TAction
      Category = 'Fetch'
      Caption = 'NFC API'
      OnExecute = ActionFetchWebinosNFCAPIExecute
    end
    object ActionFetchWebinosWebNotificationsAPI: TAction
      Category = 'Fetch'
      Caption = 'Web Notifications API'
      OnExecute = ActionFetchWebinosWebNotificationsAPIExecute
    end
    object ActionFetchWebinosPaymentAPI: TAction
      Category = 'Fetch'
      Caption = 'Payment API'
      OnExecute = ActionFetchWebinosPaymentAPIExecute
    end
    object ActionFetchWebinosRemoteUIAPI: TAction
      Category = 'Fetch'
      Caption = 'Remote UI API'
      OnExecute = ActionFetchWebinosRemoteUIAPIExecute
    end
    object ActionFetchWebinosSecureElementAPI: TAction
      Category = 'Fetch'
      Caption = 'Secure Element API'
      OnExecute = ActionFetchWebinosSecureElementAPIExecute
    end
    object ActionFetchWebinosGenericSensorAPI: TAction
      Category = 'Fetch'
      Caption = 'Generic Sensor API'
      OnExecute = ActionFetchWebinosGenericSensorAPIExecute
    end
    object ActionFetchWebinosDiscoveryAPI: TAction
      Category = 'Fetch'
      Caption = 'Discovery API'
      OnExecute = ActionFetchWebinosDiscoveryAPIExecute
    end
    object ActionFetchWebinosTVControlAPI: TAction
      Category = 'Fetch'
      Caption = 'TV Control API'
      OnExecute = ActionFetchWebinosTVControlAPIExecute
    end
    object ActionFetchWebinosVehicleAPI: TAction
      Category = 'Fetch'
      Caption = '&Vehicle API'
      OnExecute = ActionFetchWebinosVehicleAPIExecute
    end
    object ActionFetchWebinosCoreInterfaceAPI: TAction
      Category = 'Fetch'
      Caption = '&Core Interface API'
      OnExecute = ActionFetchWebinosCoreInterfaceAPIExecute
    end
    object ActionFetchWebinosWidgetAPI: TAction
      Category = 'Fetch'
      Caption = 'webinos &Widget API'
      OnExecute = ActionFetchWebinosWidgetAPIExecute
    end
    object ActionFetchWebKitIDL: TAction
      Category = 'Fetch'
      Caption = '&WebKit IDL'
      OnExecute = ActionFetchWebKitIDLExecute
    end
    object ActionFetchWebCL: TAction
      Category = 'Fetch'
      Caption = 'Fetch from Web&CL'
      OnExecute = ActionFetchWebCLExecute
    end
    object ActionFetchWacAccelerometer: TAction
      Category = 'Fetch'
      Caption = '&Accelerometer'
      OnExecute = ActionFetchWacAccelerometerExecute
    end
    object ActionFetchWacCalender: TAction
      Category = 'Fetch'
      Caption = '&Calender'
      OnExecute = ActionFetchWacCalenderExecute
    end
    object ActionFetchWacCamera: TAction
      Category = 'Fetch'
      Caption = '&Camera'
      OnExecute = ActionFetchWacCameraExecute
    end
    object ActionFetchWacContacts: TAction
      Category = 'Fetch'
      Caption = '&Contacts'
      OnExecute = ActionFetchWacContactsExecute
    end
    object ActionFetchWacCore: TAction
      Category = 'Fetch'
      Caption = '&Core'
      OnExecute = ActionFetchWacCoreExecute
    end
    object ActionFetchWacDeviceIntegration: TAction
      Category = 'Fetch'
      Caption = 'Device &Integration'
      OnExecute = ActionFetchWacDeviceIntegrationExecute
    end
    object ActionFetchWacDeviceStatus: TAction
      Category = 'Fetch'
      Caption = '&Device Status'
      OnExecute = ActionFetchWacDeviceStatusExecute
    end
    object ActionFetchWacFileSystem: TAction
      Category = 'Fetch'
      Caption = '&File System'
      OnExecute = ActionFetchWacFileSystemExecute
    end
    object ActionFetchWacGeolocation: TAction
      Category = 'Fetch'
      Caption = '&Geolocation'
      OnExecute = ActionFetchWacGeolocationExecute
    end
    object ActionFetchWacMessaging: TAction
      Category = 'Fetch'
      Caption = '&Messaging'
      OnExecute = ActionFetchWacMessagingExecute
    end
    object ActionFetchWacOrientation: TAction
      Category = 'Fetch'
      Caption = '&Orientation'
      OnExecute = ActionFetchWacOrientationExecute
    end
    object ActionFetchWacTasks: TAction
      Category = 'Fetch'
      Caption = '&Tasks'
      OnExecute = ActionFetchWacTasksExecute
    end
    object ActionFetchWacViewpointFeature: TAction
      Category = 'Fetch'
      Caption = '&Viewpoint Feature'
      OnExecute = ActionFetchWacViewpointFeatureExecute
    end
    object ActionFetchWacWebview: TAction
      Category = 'Fetch'
      Caption = '&Webview'
      OnExecute = ActionFetchWacWebviewExecute
    end
  end
  object SynEditSearch: TSynEditSearch
    Left = 120
    Top = 128
  end
  object SynHTMLSyn: TSynHTMLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 192
    Top = 128
  end
  object SynExporterHTML: TSynExporterHTML
    Color = clWindow
    DefaultFilter = 'HTML Documents (*.htm;*.html)|*.htm;*.html'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Title = 'Untitled'
    UseBackground = False
    Left = 120
    Top = 256
  end
  object SynDWSSyn: TSynDWSSyn
    DefaultFilter = 'DWScript Files (*.dws;*.pas;*.inc)|*.dws;*.pas;*.inc'
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 264
    Top = 128
  end
  object SynMacroRecorderIDL: TSynMacroRecorder
    Editor = SynEditWebIDL
    RecordShortCut = 24658
    PlaybackShortCut = 24656
    Left = 120
    Top = 192
  end
  object SynMacroRecorderDWS: TSynMacroRecorder
    Editor = SynEditDWS
    RecordShortCut = 24658
    PlaybackShortCut = 24656
    Left = 232
    Top = 192
  end
end
