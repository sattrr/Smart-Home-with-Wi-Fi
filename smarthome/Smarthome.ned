//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;
import inet.node.inet.WirelessHost;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;
import inet.visualizer.common.IntegratedVisualizer;

network Smarthome
{
    parameters:
        @display("bgb=1293,640;i=background/denah;bgi=background/denah");

    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=1242,470");
        }
        visualizer2: IntegratedVisualizer {
            @display("p=1242,559");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=1242,384;i=block/frag");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=1242,298");
        }
        accessPoint: AccessPoint {
            @display("p=506,277");
        }
        smartphone: <default("WirelessHost")> like INetworkNode {
            @display("p=122,280;i=device/palm");
        }
        lamp: <default("WirelessHost")> like INetworkNode {
            @display("p=357,101;i=misc/lamp");
        }
        thermostat: <default("WirelessHost")> like INetworkNode {
            @display("p=843,246;i=misc/thermometer");
        }
        smartTV: <default("WirelessHost")> like INetworkNode {
            @display("p=671,412;i=misc/tablet");
        }
        securityCamera: <default("WirelessHost")> like INetworkNode {
            @display("p=308,412;i=misc/securitycamera");
        }
}
