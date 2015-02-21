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
    Images = ImageList
    TabOrder = 2
    TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowTreeLines, toThemeAware, toUseBlendedImages]
    Visible = False
    OnDblClick = TreeMessagesDblClick
    OnFreeNode = TreeMessagesFreeNode
    OnGetText = TreeMessagesGetText
    OnGetImageIndex = TreeMessagesGetImageIndex
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
  object ImageList: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 232
    Top = 256
    Bitmap = {
      494C010103000500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A000000190000002700000031000000320000002C000000210000
      0010000000030000000000000000000000000000000000000000000000000000
      00000000002C00000029000000240000001C0000002C00000029000000240000
      001C000000150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000080000
      002300000857080B55BC11168CE2151CA0EF141BA1F011178CE4070A55C00000
      085F0000002E0000001400000000000000000000000200000000000000200000
      002C0202014C6F4C3AC3B67D5EF2C48461FFC68663FFC58562FFAF795BF0573E
      2FB900000041000000390000002C000000200000003300000033000000330000
      0033000000330000003300000033000000330000003300000033000000330000
      0033000000330000003300000033000000330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000305
      2B791B21AEEB1215CFFF0808CBFF0808CAFF0808C8FF0707C7FF1014C9FF1821
      A9EC03042978000000000000000000000000000000000000000000000000140E
      0A4EB98060F3D4936FFFE09E78FFE3A17BFFE4A17BFFE3A07AFFDE9C77FFCF8E
      6BFFA77457E50705043000000000000000003982CAFF387EC8FF377CC7FF377B
      C7FF387BC7FF387BC7FF377CC7FF377DC9FF377DC9FF377CC7FF387BC7FF387B
      C7FF377BC7FF377CC7FF387EC8FF3982CAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050737881E23
      CAF90A0AD2FF0A0AD1FF0A0AD0FF0909CEFF0909CDFF0909CBFF0808CAFF0808
      C9FF1A21C2F90406348600000000000000000000000000000000251A146ACC8D
      6BFEE19F79FFE19E78FFDE9B76FFE09D78FFE29F79FFE09D78FFDE9B75FFE19E
      79FFDC9A75FFC68867FA0C08063D000000003A86CDFF54E3FFFF54E3FFFF55E1
      FFFF55E1FFFF55E2FFFF55E5FFFF54E9FFFF54E9FFFF55E5FFFF55E2FFFF55E1
      FFFF55E1FFFF54E3FFFF54E3FFFF3A86CDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000104B2126C6F50C0C
      D8FF0B0BD7FF0B0BD5FF0B0BD4FF0A0AD3FF0A0AD1FF0A0AD0FF0909CFFF0909
      CDFF0909CCFF1A22BBF400000E4700000000000000000302011EC78B69F9E4A3
      7EFFE09D77FFE4A17CFFE8A580FFF2D0ADFFF4D8B5FFF2CFACFFE8A580FFE3A0
      7BFFDF9C77FFE0A07AFFB37E5FEC00000005132A439479B8E4FF51DBFFFF4AD5
      FFFF4CD5FFFF4CD6FFFF4ADCFFFF66483EFF66483EFF4ADCFFFF4CD6FFFF4CD5
      FFFF4AD5FFFF51DBFFFF79B8E4FF132A43940000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000131775BF1011DFFF0D0D
      DCFF0D0DDBFF0C0CDAFF0C0CD8FF0C0CD7FF0B0BD6FF0B0BD5FF0B0BD3FF0A0A
      D2FF0A0AD1FF0D0ED0FF10156EBD0000000000000000604434AAE1A27CFFE2A1
      7BFFE7A580FFE8A681FFE8A680FFEECDBBFFF3F3F3FFEDC7B2FFE8A580FFE8A5
      80FFE7A47EFFE2A07AFFDA9B78FF3C2B2187000000003E82C9FFA3E0FAFF3FCF
      FFFF43CEFFFF45CFFFFF43D6FFFF765B4FFF765B4FFF43D6FFFF45CFFFFF43CE
      FFFF3FCFFFFFA3E0FAFF3E82C9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000118282BC1EF4545E9FF4646
      E8FF3535E5FF1717DFFF0D0DDDFF0D0DDCFF0C0CDAFF0C0CD9FF0C0CD8FF0B0B
      D6FF0B0BD5FF0B0BD4FF1920B3ED0000011600000000BF8768F0E8AA86FFE7A6
      81FFE9A983FFE9A883FFE9A883FFF0D0BDFFF6F6F6FFEFC9B4FFE9A782FFE9A7
      81FFE9A681FFE5A47EFFE5A784FF956A51D30000000003090E445A97D4FF9EE8
      FFFF37C7FFFF3CC8FFFF3CCFFFFF4ABCE9FF4ABCE9FF3CCFFFFF3CC8FFFF37C7
      FFFF9EE8FFFF5A97D4FF03090E44000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000012504549EBFF5050EDFFBDBD
      F0FFF3F3F3FFF3F3F3FFF1F1F1FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFA5A5E8FF2626DCFF262CDAFF0000104B01010016E0A37EFFE9AD89FFEBAC
      87FFEBAC86FFEBAB86FFEAAB86FFF2D3C0FFF9F9F9FFF1CCB7FFEAAA84FFEAA9
      84FFEAA984FFE9A983FFE9AC88FFC58D6DF100000000000000001B436CBB90BF
      E6FF6ED7FFFF31C3FFFF33CBFFFF634A3EFF634A3EFF33CBFFFF31C3FFFF6ED7
      FFFF90BFE6FF1B436CBB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001F684A4CEFFF4C4CF0FFBCBC
      F2FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF0F0F0FFEFEFEFFFEFEFEFFFF1F1
      F1FFB9B9EEFF4C4CE6FF3A3FE2FF00001D660604032BE5AA86FFECB38FFFECB0
      8AFFECAF8AFFECAF89FFECAE89FFF4D6C4FFFCFCFCFFF2CFBAFFEBAD88FFEBAC
      87FFEBAC87FFEBAC86FFECB08CFFD99F7EFB0000000000000000000000003B82
      C9FFC1E8FDFF4FCCFFFF26C5FFFF68544BFF68544BFF26C5FFFF4FCCFFFFC1E8
      FDFF3B82C9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000B414144EDFE4949F3FF9595
      F3FFBBBBF2FFBBBBF2FFBBBBF1FFBBBBF1FFBBBBF1FFB9B9F0FFBBBBF0FFBBBB
      F0FF9595EEFF4848E8FF373BDFFE00000A3E01000013E7AD8AFFF2BE9AFFEEB3
      8EFFEEB38EFFEEB38DFFEDB28DFFF6D9C6FFFFFFFFFFF5D2BDFFEDB08BFFECB0
      8BFFECB08AFFECAF8AFFF1BB98FFC99374EF000000000000000000000000060F
      17585697D5FFC6F3FFFF39CAFFFF6B5A53FF6B5A53FF39CAFFFFC6F3FFFF5697
      D5FF060F17580000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A2A2DB4E34646F6FF4646
      F6FF4545F5FF4545F3FF4545F2FF4545F1FF4545F0FF4545EFFF4545EFFF4545
      EDFF4545ECFF4444ECFF2428AAE10000000800000000AB7C62DBF5C3A0FFEFB7
      92FFEFB791FFEFB691FFEFB691FFE0A582FFDCA381FFE3A985FFEEB48FFFEEB4
      8EFFEEB38EFFEEB38EFFF3BF9DFF815E4ABF0000000000000000000000000000
      0000215283CF86BEEAFFA4ECFFFF6B5C52FF6B5C52FFA4ECFFFF86BEEAFF2152
      83CF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F5CA84647FAFF4646
      F9FF4646F8FF4646F7FF4646F6FF4545F5FF4545F4FF4545F3FF4444F2FF4444
      F1FF4444EFFF4446EFFF0C0E56A500000000000000003F2E2485F2BE9BFFF5C3
      9EFFF1BA95FFF1BA94FFECB48FFFF6D4BDFFFEFAF7FFF5D2BAFFECB38DFFF0B8
      92FFEFB792FFF5C29DFFF0B995FF1B140F570000000000000000000000000000
      00000000000A3983CBFFB2E5FFFF9EC8DEFF9EC8DEFFB2E5FFFF3983CBFF0000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000021E2E31B5E24848
      FDFF4747FCFF4646FAFF4646FAFF4646F9FF4646F7FF4646F6FF4646F6FF4545
      F4FF4646F3FF2D31B0E20000021B00000000000000000000000DD09B7CEFF9CB
      A9FFF3C09BFFF2BD97FFEBB48FFFFAE3D3FFFFFFFFFFF9E2D1FFEBB48EFFF1BB
      96FFF3BF99FFF7C8A6FF9E765DD1000000000000000000000000000000000000
      0000000000000917246D5298D7FFC1F0FFFFC1F0FFFF5298D7FF0917246D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101114B3738
      C2E74B4BFFFF4747FEFF4747FDFF4747FCFF4646FBFF4646FAFF4646F9FF4949
      F8FF3638BFE701011048000000000000000000000000000000000B080739E5B0
      8EF9FBCFADFFF7C7A3FFF3C09AFFECB590FFEAB38DFFEAB38DFFF2BF99FFF7C7
      A3FFFBCDABFFD09D7EED0302011E000000000000000000000000000000000000
      00000000000000000000215283CF84C3F1FF84C3F1FF215283CF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      083621218ACA4F50EFFC5152FFFF4A4AFFFF4949FEFF5051FDFF4A4DEDFC1D20
      86C8000007330000000000000000000000000000000000000000000000000504
      032799735BCCF9C9A6FFFCD1AFFFFCD7B9FFFBD8BAFFFCD7B9FFFCD1AFFFF8C6
      A4FF745645B10101001500000000000000000000000000000000000000000000
      00000000000000000000000203213284CDFF3284CDFF00020321000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000C4210104F9B1D1E66AB1C1D66AB0F0F4E9A00000C410000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003281D1769856450BEE5B290F8F4BF9CFFD9A788F1775947B41610
      0D4E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
