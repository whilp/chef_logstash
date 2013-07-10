require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Input
        class Pipe < Chef::Resource::Logstash::Config


          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def debug(arg=nil)
            set_or_return(:debug, arg, :kind_of => [TrueClass, FalseClass])
          end

          def add_field(arg=nil)
            set_or_return(:add_field, arg, :kind_of => [Hash])
          end

          def charset(arg=nil)
            set_or_return(:charset, arg, :kind_of => [String], :equal_to => %w(ASCII-8BIT UTF-8 US-ASCII Big5 Big5-HKSCS Big5-UAO CP949 Emacs-Mule EUC-JP EUC-KR EUC-TW GB18030 GBK ISO-8859-1 ISO-8859-2 ISO-8859-3 ISO-8859-4 ISO-8859-5 ISO-8859-6 ISO-8859-7 ISO-8859-8 ISO-8859-9 ISO-8859-10 ISO-8859-11 ISO-8859-13 ISO-8859-14 ISO-8859-15 ISO-8859-16 KOI8-R KOI8-U Shift_JIS UTF-16BE UTF-16LE UTF-32BE UTF-32LE Windows-1251 BINARY IBM437 CP437 IBM737 CP737 IBM775 CP775 CP850 IBM850 IBM852 CP852 IBM855 CP855 IBM857 CP857 IBM860 CP860 IBM861 CP861 IBM862 CP862 IBM863 CP863 IBM864 CP864 IBM865 CP865 IBM866 CP866 IBM869 CP869 Windows-1258 CP1258 GB1988 macCentEuro macCroatian macCyrillic macGreek macIceland macRoman macRomania macThai macTurkish macUkraine CP950 Big5-HKSCS:2008 CP951 stateless-ISO-2022-JP eucJP eucJP-ms euc-jp-ms CP51932 eucKR eucTW GB2312 EUC-CN eucCN GB12345 CP936 ISO-2022-JP ISO2022-JP ISO-2022-JP-2 ISO2022-JP2 CP50220 CP50221 ISO8859-1 Windows-1252 CP1252 ISO8859-2 Windows-1250 CP1250 ISO8859-3 ISO8859-4 ISO8859-5 ISO8859-6 Windows-1256 CP1256 ISO8859-7 Windows-1253 CP1253 ISO8859-8 Windows-1255 CP1255 ISO8859-9 Windows-1254 CP1254 ISO8859-10 ISO8859-11 TIS-620 Windows-874 CP874 ISO8859-13 Windows-1257 CP1257 ISO8859-14 ISO8859-15 ISO8859-16 CP878 Windows-31J CP932 csWindows31J SJIS PCK MacJapanese MacJapan ASCII ANSI_X3.4-1968 646 UTF-7 CP65000 CP65001 UTF8-MAC UTF-8-MAC UTF-8-HFS UTF-16 UTF-32 UCS-2BE UCS-4BE UCS-4LE CP1251 UTF8-DoCoMo SJIS-DoCoMo UTF8-KDDI SJIS-KDDI ISO-2022-JP-KDDI stateless-ISO-2022-JP-KDDI UTF8-SoftBank SJIS-SoftBank locale external filesystem internal) )
          end

          def format(arg=nil)
            set_or_return(:format, arg, :kind_of => [String], :equal_to => %w(plain json json_event msgpack_event) )
          end

          def message_format(arg=nil)
            set_or_return(:message_format, arg, :kind_of => [String])
          end

          def command(arg=nil)
            set_or_return(:command, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

